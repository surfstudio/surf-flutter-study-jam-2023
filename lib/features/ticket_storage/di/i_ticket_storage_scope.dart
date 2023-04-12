import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_bloc.dart';

/// Интерфейс скоупа зависимостей для фичи ticket_storage.
abstract class ITicketStorageScope {
  /// Бизнес-логика флоу загрузки билетов.
  TicketsBloc get ticketsBloc;
}
