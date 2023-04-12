import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/controllers/ticket_controller.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_open_view.dart';
import 'package:surf_flutter_study_jam_2023/widgets/file_status_trailing_widget.dart';
import 'package:surf_flutter_study_jam_2023/widgets/file_status_widget.dart';

class TicketListView extends StatefulWidget {
  final TicketController ticketController;

  TicketListView({required this.ticketController});

  static const routeName = '/';

  @override
  _TicketListViewState createState() => _TicketListViewState();
}

class _TicketListViewState extends State<TicketListView> {
  void _showModalBottomSheet(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Ticket>>(
      stream: widget.ticketController.tasksStream,
      builder: (BuildContext context, AsyncSnapshot<List<Ticket>> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Хранение билетов'),
            ),
            body: Center(
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  Ticket ticket = snapshot.data![index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.file_present),
                      title: Text(
                        ticket.fileName ?? ticket.id.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      dense: true,
                      subtitle: FileStatusWidget(
                        isLoaded: ticket.isLoaded,
                        isLoading: ticket.isLoading,
                        percentLoaded: ticket.persentLoaded,
                      ),
                      isThreeLine: true,
                      contentPadding:
                          EdgeInsets.only(left: 25, right: 25, top: 20),
                      trailing: FileStatusTraillingWidget(
                        isLoaded: ticket.isLoaded,
                        isLoading: ticket.isLoading,
                      ),
                      onTap: () {
                        if (ticket.isLoaded) {
                          Navigator.pushNamed(
                            context,
                            TicketOpenView.routeName!,
                            arguments: ScreenArguments(ticket),
                          );
                        } else {
                          if (!ticket.isLoaded && !ticket.isLoading) {
                            widget.ticketController
                                .downloadTicket(context, ticket, () {
                              // Обновляем View после pагрузки элемента
                              print("чёто именилось!");
                              setState(() {});
                            });
                          }
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            floatingActionButton:
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                onPressed: () {
                  widget.ticketController.handleAddTicketButtonPressed(context);
                },
                child: Text('Добавить'),
              ),
              ElevatedButton(
                onPressed: () {
                  widget.ticketController
                      .downloadAllTicket(context, snapshot.data, () {
                    // Обновляем View после pагрузки элемента
                    setState(() {});
                  });
                },
                child: Text('Загрузить все'),
              )
            ]),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Хранение билетов'),
            ),
            floatingActionButton: ElevatedButton(
              onPressed: () {
                widget.ticketController.handleAddTicketButtonPressed(context);
              },
              child: Text('Добавить'),
            ),
          );
        }
      },
    );
  }
}
