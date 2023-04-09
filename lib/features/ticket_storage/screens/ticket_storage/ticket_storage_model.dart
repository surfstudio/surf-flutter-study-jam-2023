import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_loading_states.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';

/// Модель для [TicketStorageScreen].
class TicketStorageModel extends ElementaryModel {
  final _ticketList = ValueNotifier<Iterable<TicketEntity>>(_mockTickets);

  /// Список билетов.
  ValueListenable<Iterable<TicketEntity>> get ticketList => _ticketList;

  /// @nodoc
  TicketStorageModel();
}

const _mockTickets = [
  TicketEntity(
    id: 'id',
    name: 'Ticket 1',
    ticketType: TicketType.airplane,
    loadingState: TicketLoadingStates.waiting,
    loadingProgress: 0,
  ),
];
