import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_wm.dart';

// TODO(zemcov): покрой тестами.

/// Экран “Хранения билетов”.
class TicketStorageScreen extends ElementaryWidget<TicketStorageWM> {
  /// @nodoc
  const TicketStorageScreen({
    Key? key,
  }) : super(createWM, key: key);

  @override
  Widget build(TicketStorageWM wm) {
    return Scaffold(
      appBar: AppBar(title: Text(wm.title)),
      body: Center(
        child: Text(
          wm.noDataMessage,
          style: wm.noDataMessageStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: wm.onAddTicket,
        label: Text(wm.addButtonLabel),
      ),
    );
  }
}
