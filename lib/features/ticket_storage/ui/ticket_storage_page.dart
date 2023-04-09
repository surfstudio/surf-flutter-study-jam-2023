import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/theme/style_themes.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/loading.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket_tile.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/url_bottom_sheet.dart';

import '../bloc/tickets_list/tickets_list_bloc.dart';
import '../enum/ticket_state.dart';

class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Хранение билетов',
          style: StyleThemes.commonDarkStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const UrlBottomSheet(),
              );
            },
            child: const Text(
              'Добавить',
              style: StyleThemes.commonDarkStyle,
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<TicketsListBloc>(context).add(
                TicketsListEvent.downloadTickets(
                  keys: context
                      .read<TicketsListBloc>()
                      .tickets
                      .where(
                        (element) => element.state == TicketState.notLoaded,
                      )
                      .map((e) => e.key)
                      .toList(),
                ),
              );
            },
            child: const Text(
              'Загрузить все',
              style: StyleThemes.commonDarkStyle,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          BlocBuilder<TicketsListBloc, TicketsListState>(
            buildWhen: (previous, current) => current is TicketsListLoadedState,
            builder: (context, state) {
              if (state is TicketsListLoadedState) {
                if (state.tickets.isNotEmpty) {
                  final tickets = state.tickets.toList();
                  tickets.sort((a, b) => b.timeAdded.compareTo(a.timeAdded));
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final ticket = tickets[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: TicketTile(ticket: ticket),
                      );
                    },
                    itemCount: tickets.length,
                  );
                } else {
                  return const Center(
                    child: Text(
                      'Здесь пока ничего нет',
                      style: StyleThemes.commonDarkStyle,
                    ),
                  );
                }
              }
              return const SizedBox();
            },
          ),
          BlocBuilder<TicketsListBloc, TicketsListState>(
            builder: (context, state) {
              if (state is TicketsListLoadingState) {
                return const Loading();
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
