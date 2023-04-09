import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/controllers/ticket_controller.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final TicketController _ticketController = TicketController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket List',
      initialRoute: '/',
      routes: {
        '/': (context) => TicketListView(ticketController: _ticketController),
        // '/add': (context) => TaskAddView(controller: _taskController),
      },
    );
  }

  @override
  void dispose() {
    _ticketController.dispose();
    // super.d();
  }
}
