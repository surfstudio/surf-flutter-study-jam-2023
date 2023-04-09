import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/TicketsRepository/tickets_repository.dart';
import 'package:surf_flutter_study_jam_2023/model/ticket.dart';

part 'ticket_storage_bloc_event.dart';
part 'ticket_storage_bloc_state.dart';

class TicketStorageBlocBloc
    extends Bloc<TicketStorageBlocEvent, TicketStorageBlocState> {
  final ITicketsRepository ticketsRepository;
  TicketStorageBlocBloc({required this.ticketsRepository})
      : super(TicketStorageBlocInitial()) {
    on<TicketStorageBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
