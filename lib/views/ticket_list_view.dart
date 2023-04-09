import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/controllers/ticket_controller.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/widgets/file_status_trailing_widget.dart';
import 'package:surf_flutter_study_jam_2023/widgets/file_status_widget.dart';

class TicketListView extends StatefulWidget {
  final TicketController ticketController;

  TicketListView({required this.ticketController});

  @override
  _TicketListViewState createState() => _TicketListViewState();
}

class _TicketListViewState extends State<TicketListView> {
  // void _addAction() {}

  void _showModalBottomSheet(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Ticket>>(
      stream: widget.ticketController.tasksStream,
      builder: (BuildContext context, AsyncSnapshot<List<Ticket>> snapshot) {
        if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Хранение билетов'),
            ),
            body: Center(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.file_present),
                      title: Text(
                        "test",
                        style: TextStyle(fontSize: 20),
                      ),
                      dense: true,
                      subtitle: FileStatusWidget(status: ""),
                      isThreeLine: true,
                      contentPadding:
                          EdgeInsets.only(left: 25, right: 25, top: 20),
                      trailing: FileStatusTraillingWidget(status: ""),
                      onTap: () => print('Item $index was tapped'),
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: ElevatedButton(
              onPressed: () {
                widget.ticketController.handleAddTicketButtonPressed(context);
              },
              child: Text('Добавить'),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        } else {
          return Scaffold();
        }
      },
    );
  }
}
