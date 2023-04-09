import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_preview/bloc/document_view/document_view_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_list/tickets_list_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';
import 'dart:math';

import '../../../ticket_preview/ui/document_view_screen.dart';
import '../../enum/ticket_state.dart';

class TicketTile extends StatelessWidget {
  final Ticket ticket;

  const TicketTile({
    super.key,
    required this.ticket,
  });

  Widget _loadingButton(BuildContext context) {
    switch (ticket.state) {
      case TicketState.notLoaded:
        return IconButton(
          onPressed: () {
            BlocProvider.of<TicketsListBloc>(context).add(
              TicketsListEvent.downloadTickets(
                keys: [ticket.key],
              ),
            );
          },
          icon: const Icon(Icons.download),
        );
      case TicketState.loading:
        return IconButton(
          onPressed: () {
            BlocProvider.of<TicketsListBloc>(context).add(
              TicketsListEvent.pauseDownloadForTicket(
                key: ticket.key,
              ),
            );
          },
          icon: const Icon(Icons.stop_circle),
        );
      case TicketState.paused:
        return IconButton(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow),
        );
      case TicketState.loaded:
        return Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cloud_download),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Действительно хотите удалить файл "${ticket.name}"?',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Отмена'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<TicketsListBloc>(context).add(
                                    TicketsListEvent.deleteDocument(
                                      ticket: ticket,
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                                child: const Text('Удалить'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        );
    }
  }

  Widget _loadingIndicator() {
    var val = 0.0;
    if (ticket.state == TicketState.loading &&
        ticket.loadingProgress.total > 0) {
      val = ticket.loadingProgress.downloaded / ticket.loadingProgress.total;
    } else if (ticket.state == TicketState.loaded) {
      val = 1;
    }
    return LinearProgressIndicator(
      value: val,
    );
  }

  static String formatBytes(int bytes) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    final i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(2)} ${suffixes[i]}';
  }

  Widget _subText() {
    final String text;
    switch (ticket.state) {
      case TicketState.notLoaded:
        text = 'Ожидает начала загрузки';
        break;
      case TicketState.loading:
      case TicketState.paused:
        text =
            'Загружается ${formatBytes(ticket.loadingProgress.downloaded)} из ${formatBytes(ticket.loadingProgress.total)}';
        break;
      case TicketState.loaded:
        text = 'Загружено';
        break;
    }
    return Text(text);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ticket.state == TicketState.loaded) {
          BlocProvider.of<DocumentViewBloc>(context).add(
            DocumentViewEvent.load(ticket: ticket),
          );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const DocumentViewScreen(),
            ),
          );
        }
      },
      child: Row(
        children: [
          const Icon(Icons.airplane_ticket),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ticket.name),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: _loadingIndicator(),
                  ),
                  _subText(),
                ],
              ),
            ),
          ),
          _loadingButton(context),
        ],
      ),
    );
  }
}
