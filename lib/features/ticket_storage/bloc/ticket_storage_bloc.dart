import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/data/interactor/ticket_list_interactor.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';


part 'ticket_storage_event.dart';

part 'ticket_storage_state.dart';

class TicketStorageBloc extends Bloc<TicketStorageEvent, TicketStorageState> {
  final TicketListInteractor ticketListInteractor;

  //ticket_storage_interactor

  TicketStorageBloc(this.ticketListInteractor)
      : super(TicketListLoadState()) {
    ///Обработка события загрузка экрана
    on<TicketListLoadEvent>(_onTicketListLoad);

    ///Обработка события окончание загрузки экрана
    on<TicketListShowEvent>(_onTicketListShow);

    ///Обработка события удаление меств из списка "Посещенные"
    on<TicketSelectEvent>(_onTicketSelect);

    ///Нажали на карточку места
    on<TicketRemoveEvent>(_onTicketRemove);
  }

  Future<void> _onTicketListLoad(
    TicketStorageEvent event,
    Emitter<TicketStorageState> emit,
  ) async {
    debugPrint('Начало загрузки');
    emit(TicketListLoadState());

    final future = await ticketListInteractor.loadListTicket();

    emit(TicketShowListState(future));

    debugPrint(' после загрузки');
  }

  Future<void> _onTicketListShow(
    TicketStorageEvent event,
    Emitter<TicketStorageState> emit,
  ) async {
    debugPrint(' до загрузки');
    emit(TicketListLoadState());
    debugPrint(' после загрузки');
    final future = ticketListInteractor.loadListTicket();
  }

  Future<void> _onTicketSelect(
    TicketStorageEvent event,
    Emitter<TicketStorageState> emit,
  ) async {
    debugPrint(' до загрузки');
    emit(TicketListLoadState());
    debugPrint(' после загрузки');
    final future = ticketListInteractor.loadListTicket();
  }

  Future<void> _onTicketRemove(
    TicketStorageEvent event,
    Emitter<TicketStorageState> emit,
  ) async {
    debugPrint(' до загрузки');
    emit(TicketListLoadState());
    debugPrint(' после загрузки');
    final future = ticketListInteractor.loadListTicket();
  }
}
