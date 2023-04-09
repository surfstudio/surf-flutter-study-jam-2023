import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_wm.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/widgets/no_data_state_widget.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/widgets/ticket_tile.dart';

/// Экран “Хранения билетов”.
class TicketStorageScreen extends ElementaryWidget<ITicketStorageWM> {
  /// @nodoc
  const TicketStorageScreen({
    Key? key,
  }) : super(createWM, key: key);

  @override
  Widget build(ITicketStorageWM wm) {
    return Scaffold(
      appBar: AppBar(title: Text(wm.title)),
      body: ValueListenableBuilder(
        valueListenable: wm.ticketList,
        builder: (_, ticketList, __) {
          if (ticketList.isEmpty) {
            return NoDataStateWidget(
              noDataMessage: wm.noDataMessage,
              noDataMessageStyle: wm.noDataMessageStyle,
            );
          }

          return ListView.builder(
            itemCount: ticketList.length,
            itemBuilder: (_, i) {
              final ticket = ticketList.elementAt(i);

              return TicketTile(
                label: ticket.name,
                leadingIconData: ticket.ticketType.iconData,
                trailingIconData: ticket.loadingState.iconData,
                onTrailingPressed: () {
                  throw UnimplementedError();
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: wm.onAddTicket,
        label: Text(wm.addButtonLabel),
      ),
    );
  }
}
