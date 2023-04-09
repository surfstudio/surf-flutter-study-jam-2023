import 'dart:async';

import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_create_view.dart';

class TicketController {
  final StreamController<List<Ticket>> _ticketStreamController =
      StreamController<List<Ticket>>.broadcast();

  Stream<List<Ticket>> get tasksStream => _ticketStreamController.stream;

  List<Ticket> _tickets = [];

  void addTicket(Ticket task) {
    task.id = DateTime.now().millisecondsSinceEpoch;
    _tickets.add(task);
    _dispatch();
  }

  void downloadTicket(Ticket task) {
    // int index = _tasks.indexWhere((element) => element.id == task.id);
    // if (index != -1) {
    //   _tasks[index] = task;
    //   _dispatch();
    // }
  }

  void deleteTicket(Ticket task) {
    // _tasks.removeWhere((element) => element.id == task.id);
    // _dispatch();
    // callback();
  }

  void handleAddTicketButtonPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.9,
          minChildSize: 0.32,
          expand: false,
          snap: true,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: TicketCreateView(this),
            );
          }),
    );
    // Создаем экземпляр представления AddUserView
    // final addUserView = AddUserView();

    // Отображаем AddUserView
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => addUserView),
    // );
  }

  void _dispatch() {
    _ticketStreamController.sink.add(_tickets);
  }

  void dispose() {
    _ticketStreamController.close();
  }
}
