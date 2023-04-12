import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_loading_states.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/i_ticket_repository.dart';

part 'tickets_bloc.freezed.dart';
part 'tickets_event.dart';
part 'tickets_state.dart';

/// Бизнес-логика флоу "Хранение билетов".
class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  /// Репозиторий для хранения билетов.
  final ITicketRepository ticketRepository;

  /// @nodoc
  TicketsBloc(this.ticketRepository) : super(const TicketsState.initial()) {
    on<_Started>(_started);
    on<_AddTicketUrl>(_addTicketUrl);
    on<_LoadTicket>(_loadTicket);
  }

  FutureOr<void> _addTicketUrl(
    _AddTicketUrl event,
    Emitter<TicketsState> emit,
  ) async {
    try {
      await ticketRepository
          .addNewTicket(_getTicketEntity(event.url, event.type));

      emit.call(TicketsState.dataUpdated(ticketRepository.tickets));
    } on Exception catch (e) {
      emit.call(TicketsState.error(e));
    }
  }

  TicketEntity _getTicketEntity(String url, TicketType type) {
    final uri = Uri.parse(url);
    final name = uri.pathSegments.last;

    return TicketEntity(
      id: url,
      name: name,
      ticketType: type,
      loadingProgress: 0,
      // TODO(zemcov): добавь получение актуального статуса.
      loadingState: TicketLoadingStates.waiting,
    );
  }

  FutureOr<void> _started(
    _Started event,
    Emitter<TicketsState> emit,
  ) {
    // TODO(zemcov): добавь инициализацию данных из репозитория.
    throw UnimplementedError();
  }

  FutureOr<void> _loadTicket(
    _LoadTicket event,
    Emitter<TicketsState> emit,
  ) {
    // TODO(zemcov): добавь закгрузку конкретной PDF-ки.
    throw UnimplementedError();
  }
}
