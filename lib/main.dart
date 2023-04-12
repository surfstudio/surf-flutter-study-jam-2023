import 'dart:io';

import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/controllers/ticket_controller.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_list_view.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_open_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Directory appDocDir = await getApplicationDocumentsDirectory();

  // await PathProvider.registerWith(Registrar());
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
        TicketListView.routeName: (context) =>
            TicketListView(ticketController: _ticketController),
        TicketOpenView.routeName: (context) => const TicketOpenView(),
      },
    );
  }

  @override
  void dispose() {
    _ticketController.dispose();
    // super.d();
  }
}
