import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/app_bar_title.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/body.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const AppBarTitle(),
        ),
        //bottomSheet: const ButtonShow(),
        body: const Body(),
      );
}
