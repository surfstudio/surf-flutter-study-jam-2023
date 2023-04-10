import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/assets/strings/locale/ru.dart';
import 'package:surf_flutter_study_jam_2023/assets/text/text_extension.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';

class TicketListItemWidget extends StatelessWidget {
  final TicketModel ticket;
  final ValueChanged<TicketModel> onTap;

  const TicketListItemWidget({
    super.key,
    required this.ticket,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(ticket);
      },
      child: ListTile(
        leading: const Icon(Icons.airplane_ticket_outlined),
        trailing: ticket.status.when(
          initialized: () => const Icon(
            Icons.edit,
          ),
          readyToLoadFile: (url) => const Icon(
            Icons.cloud_download_outlined,
          ),
          loadingFile: (_, __) => const Icon(
            Icons.pause_circle_outline,
          ),
          paused: (_) => const Icon(
            Icons.pause_circle_outline,
          ),
          fileLoaded: (filePath) => const Icon(
            Icons.cloud_done,
          ),
        ),
        title: Text(
          ticket.title.value.fold(
            (l) => l.failedValue,
            (r) => r,
          ),
          style: AppTextTheme.of(context).regular16,
        ),
        subtitle: Text(
          AppStrings.ticketStorage.statusTitle(ticket.status),
          style: AppTextTheme.of(context).regular14,
        ),
      ),
    );
  }
}
