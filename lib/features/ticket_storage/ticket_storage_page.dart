import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_icons.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/add_ticket_button_widget.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/tickets_list_placeholder_widget.dart';

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
      // body: const TicketsListPlaceholderWidget(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
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
                        '${AppLocalizations.of(context)!.ticket} ${index + 1}',
                        style: AppTextStyle.ticketTitle,
                      ),
                      AppSizes.gapH4,
                      Container(
                        height: AppSizes.p4,
                        // width: 100,
                        decoration: BoxDecoration(
                          color: AppColors.lavender,
                          borderRadius: BorderRadius.circular(AppSizes.p16),
                        ),
                      ),
                      AppSizes.gapH4,
                      Text(
                        AppLocalizations.of(context)!
                            .waitingForTheDownloadToStart,
                        style: AppTextStyle.ticketDesc,
                      ),
                    ],
                  ),
                ),
                AppSizes.gapW16,
                AppIcons.pause,
              ],
            )),
      ),
    );
  }
}
