import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_icons.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';
import 'package:surf_flutter_study_jam_2023/data/database/hive_db.dart';
import 'package:surf_flutter_study_jam_2023/data/database/models/ticket_file.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/add_ticket_button_widget.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/tickets_list_placeholder_widget.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.ticketStorage,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: const AddTicketButtonWidget(),
      body: ValueListenableBuilder<Box<TicketFile>>(
        valueListenable: HiveDB().getBoxTickets().listenable(),
        builder: (context, box, widget) {
          final ticketsList = box.values.toList();
          if (ticketsList.isEmpty) {
            return const TicketsListPlaceholderWidget();
          }
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              final ticket = ticketsList[index];
              final progress = ticket.receivedBytes / ticket.totalBytes * 100;
              final startLoadFile = ticket.receivedBytes != 0;
              final fileDownloaded = ticket.receivedBytes == ticket.totalBytes;
              final receivedBytes =
                  (ticket.receivedBytes / 1024000).toStringAsFixed(2);
              final totalBytes =
                  (ticket.totalBytes / 1024000).toStringAsFixed(2);

              return Container(
                padding: AppSizes.edgeAll16,
                child: Row(
                  children: [
                    AppIcons.airplaneTicket,
                    AppSizes.gapW16,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket.name,
                            style: AppTextStyle.ticketTitle,
                          ),
                          AppSizes.gapH4,
                          LinearProgressIndicator(value: progress),
                          AppSizes.gapH4,
                          if (fileDownloaded)
                            Text(
                              AppLocalizations.of(context)!.fileDownloaded,
                              style: AppTextStyle.ticketDesc,
                            )
                          else if (startLoadFile)
                            Text(
                              '${AppLocalizations.of(context)!.loading} $receivedBytes ${AppLocalizations.of(context)!.from} $totalBytes',
                              style: AppTextStyle.ticketDesc,
                            )
                          else
                            Text(
                              AppLocalizations.of(context)!
                                  .waitingForTheDownloadToStart,
                              style: AppTextStyle.ticketDesc,
                            )
                        ],
                      ),
                    ),
                    AppSizes.gapW16,
                    Visibility(
                      visible: fileDownloaded,
                      replacement: AppIcons.pause,
                      child: AppIcons.cloudDone,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
