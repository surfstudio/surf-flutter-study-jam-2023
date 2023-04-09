import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository_abstract.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/enum/ticket_state.dart';

import '../../domain/entities/ticket.dart';

part 'tickets_list_event.dart';
part 'tickets_list_state.dart';
part 'tickets_list_bloc.freezed.dart';

class TicketsListBloc extends Bloc<TicketsListEvent, TicketsListState> {
  final TicketsRepositoryAbstract ticketsRepository;
  List<Ticket> tickets = [];
  TicketsListBloc({
    required this.ticketsRepository,
  }) : super(const TicketsListState.init()) {
    on<TicketsListEvent>((event, emit) async {
      await event.map(
        load: (event) async {
          emit(const TicketsListState.loading());
          tickets = await ticketsRepository.loadTicketsList();

          emit(TicketsListState.loaded(tickets: tickets));
        },
        addTicket: (event) async {
          emit(const TicketsListState.loading());
          tickets.add(
            Ticket(
              name: 'Ticket${tickets.length + 1}',
              url: event.url,
              state: TicketState.notLoaded,
              timeAdded: DateTime.now(),
            ),
          );
          final result = await ticketsRepository.saveTicketsList(
            tickets: tickets,
          );
          event.onSuccess();
          emit(TicketsListState.loaded(tickets: tickets));
        },
      );
    });
  }
}
