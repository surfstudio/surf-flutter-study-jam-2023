import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/add_ticket_button_widget.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.ticketStorage,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: const AddTicketButtonWidget(),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.noAvailableData,
          style: AppTextStyle.bodyText,
        ),
      ),
    );
  }
}
