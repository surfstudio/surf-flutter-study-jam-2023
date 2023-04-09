import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository_abstract.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/enum/ticket_state.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/ticket.dart';

part 'tickets_list_event.dart';
part 'tickets_list_state.dart';
part 'tickets_list_bloc.freezed.dart';

class TicketsListBloc extends Bloc<TicketsListEvent, TicketsListState> {
  final TicketsRepositoryAbstract ticketsRepository;
  List<Ticket> tickets = [];
  List<DownloadingController> downloadingTicketsControllers = [];
  TicketsListBloc({
    required this.ticketsRepository,
  }) : super(const TicketsListState.init()) {
    DownloadingController? getDownloadingController(String key) {
      try {
        return downloadingTicketsControllers.firstWhere(
          (c) => c.key == key,
        );
      } catch (_) {
        return null;
      }
    }

    on<TicketsListEvent>((event, emit) async {
      await event.map(
        load: (event) async {
          emit(const TicketsListState.loading());
          tickets = await ticketsRepository.loadTicketsList();

          emit(
            TicketsListState.loaded(
              tickets: tickets,
              randomKey: const Uuid().v4(),
            ),
          );
        },
        addTicket: (event) async {
          emit(const TicketsListState.loading());
          tickets.add(
            Ticket(
              key: const Uuid().v4(),
              name: event.url.split('/').last,
              url: event.url,
              state: TicketState.notLoaded,
              timeAdded: DateTime.now(),
              loadingProgress: LoadingProgress.initial(),
            ),
          );
          final result = await ticketsRepository.saveTicketsList(
            tickets: tickets,
          );
          if (result) {
            event.onSuccess();
          } else {
            event.onError('Не удалось добавить билет');
          }
          emit(
            TicketsListState.loaded(
              tickets: tickets,
              randomKey: const Uuid().v4(),
            ),
          );
        },
        downloadTickets: (event) async {
          void updateTickets() {
            if (state is TicketsListLoadedState) {
              emit(
                (state as TicketsListLoadedState).copyWith(
                  tickets: tickets,
                  randomKey: const Uuid().v4(),
                ),
              );
            }
          }

          Future<void> downloadingFunction(Ticket element) async {
            downloadingTicketsControllers.add(
              DownloadingController(
                key: element.key,
              ),
            );
            await ticketsRepository
                .downloadDocument(
              ticket: element,
              cancelToken: getDownloadingController(element.key)?.cancelToken ??
                  CancelToken(),
              onReceiveProgress: (downloaded, total) {
                final index = tickets.indexWhere((el) => el.key == element.key);
                if (index > -1) {
                  tickets[index] = element.copyWith(
                    state: TicketState.loading,
                    loadingProgress: LoadingProgress(
                      downloaded: downloaded,
                      total: total,
                    ),
                  );
                  updateTickets();
                }
              },
            )
                .then((value) {
              final index = tickets.indexWhere((el) => el.key == element.key);
              if (index > -1) {
                if (value) {
                  tickets[index] = element.copyWith(
                    state: TicketState.loaded,
                    loadingProgress: LoadingProgress.initial(),
                  );
                } else {
                  tickets[index] = element.copyWith(
                    state: TicketState.notLoaded,
                    loadingProgress: LoadingProgress.initial(),
                  );
                }
                downloadingTicketsControllers.removeWhere(
                  (c) => c.key == element.key,
                );
                ticketsRepository.saveTicketsList(
                  tickets: tickets,
                );
                updateTickets();
              }
            });
          }

          final ticketstToDownload =
              tickets.where((element) => event.keys.contains(element.key));

          for (var element in ticketstToDownload) {
            await downloadingFunction(element);
          }
        },
        pauseDownloadForTicket: (event) {
          getDownloadingController(event.key)?.stopDownload();
          downloadingTicketsControllers.removeWhere(
            (c) => c.key == event.key,
          );
        },
        deleteDocument: (event) async {
          emit(const TicketsListState.loading());
          await ticketsRepository.deleteTicket(ticket: event.ticket);
          tickets.removeWhere(
            (element) => element.key == event.ticket.key,
          );
          await ticketsRepository.saveTicketsList(
            tickets: tickets,
          );
          add(const TicketsListEvent.load());
        },
      );
    });
  }
}

class DownloadingController {
  String key;
  final cancelToken = CancelToken();

  DownloadingController({
    required this.key,
  });

  // void startDownload() {}

  // void pauseDownload() {
  //   cancelToken.cancel();
  // }

  void stopDownload() {
    cancelToken.cancel();
  }
}
