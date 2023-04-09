import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/data/interactor/ticket_list_interactor.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';



part 'ticket_item_event.dart';

part 'ticket_item_state.dart';

class TicketItemBloc extends Bloc<TicketItemEvent, TicketItemState> {
  final TicketListInteractor ticketListInteractor;

  //ticket_storage_interactor

  TicketItemBloc(this.ticketListInteractor)
      : super(TicketItemShowState()) {
    ///Обработка события загрузка экрана
    on<TicketItemLoadEvent>(_onTicketItemLoad);

    ///Обработка события окончание загрузки экрана
    on<TicketItemShowEvent>(_onTicketItemShow);

  }

  Future<void> _onTicketItemLoad(
    TicketItemEvent event,
    Emitter<TicketItemState> emit,
  ) async {

    debugPrint('Начало загрузки ${event.props.first.toString()}');
    emit(TicketItemLoadState(event.props.first as int));

    if ((event.props.first as int) == 100) {
      emit(TicketItemShowState());
    }

    debugPrint(' после загрузки');
  }

  Future<void> _onTicketItemShow(
    TicketItemEvent event,
    Emitter<TicketItemState> emit,
  ) async {



  }

}
