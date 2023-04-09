import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/screen/ticket_storage_screen_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/add_new_ticker_button/widget.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/tickets/widget.dart';
import 'package:provider/provider.dart';

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
        }
      ),
      floatingActionButton: AddNewTicketButton(
        onPressed: () {
          final ticket = showBottomSheet<TicketModel>(
            context: context,
            builder: (_) {
              return const Placeholder();
            },
          );

        },
      ),
    );
  }
}
