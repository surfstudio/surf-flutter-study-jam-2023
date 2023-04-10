import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/screen/ticket_storage_screen_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/add_new_ticker_button/widget.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/tickets/widget.dart';

/// Экран “Хранения билетов”.
class TicketStorageScreen extends StatelessWidget {
  const TicketStorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<TicketStorageScreenModel>();

    return Scaffold(
      body: TicketsWidget(
        onInit: () {
          state.loadTickets();
        },
      ),
      floatingActionButton: AddNewTicketButton(
        onPressed: () async {
          final ticket = await showModalBottomSheet<TicketModel?>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                color: Colors.white,
                child: Center(
                  child: Text('This is a bottom sheet'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
