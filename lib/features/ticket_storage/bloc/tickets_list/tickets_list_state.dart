part of 'tickets_list_bloc.dart';

@freezed
class TicketsListState with _$TicketsListState {
  const TicketsListState._();
  const factory TicketsListState.init() = TicketsListInitState;
  const factory TicketsListState.loaded({
    required List<Ticket> tickets,
  }) = TicketsListLoadedState;
  const factory TicketsListState.loading() = TicketsListLoadingState;
}
