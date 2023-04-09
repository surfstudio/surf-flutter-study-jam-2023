import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';

/// Модель для [TicketStorageScreen].
class TicketStorageModel extends ElementaryModel {
  late final StreamSubscription<TicketsState> _blocSubscription;
  final TicketsBloc _ticketsBloc;
  final _isDataLoading = ValueNotifier(false);
  final _ticketList = ValueNotifier<Iterable<TicketEntity>>([]);

  /// Список билетов.
  ValueListenable<Iterable<TicketEntity>> get ticketList => _ticketList;

  /// Состояние загрузки данных.
  ValueListenable<bool> get isDataLoading => _isDataLoading;

  /// @nodoc
  TicketStorageModel(this._ticketsBloc);

  @override
  void init() {
    super.init();

    _blocSubscription = _ticketsBloc.stream.listen(_blocListener);
  }

  @override
  void dispose() {
    _blocSubscription.cancel();
    _ticketList.dispose();
    _isDataLoading.dispose();

    super.dispose();
  }

  /// Добавление нового билета в список.
  void addNewTicketLink(String url, TicketType type) {
    _ticketsBloc.add(TicketsEvent.addTicketUrl(
      url: url,
      type: type,
    ));
  }

  void _blocListener(TicketsState state) {
    state.when(
      initial: () {
        _isDataLoading.value = true;
      },
      dataUpdated: (ticketList) {
        _isDataLoading.value = false;
        _ticketList.value = ticketList;
      },
      error: (e) {
        _isDataLoading.value = false;
        // TODO(zemcov): сделай обработку ошибок.
      },
    );
  }
}
