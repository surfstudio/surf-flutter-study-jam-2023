import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/status/value_object.dart';
import 'dart:math' as math;

class AppStrings {
  static const ticketStorage = _TicketStorageStrings();
}

class _TicketStorageStrings {
  String get addButtonLabel => 'Добавить';
  String get ticketsTitle => 'Хранение билетов';
  String get enterUrlPlaceholder => 'Введите url';
  String get emptyList => 'Здесь пока ничего нет';
  String get unexpectedFailure => 'Что-то пошло не так';

  const _TicketStorageStrings();

  String statusTitle(TicketStatus status) {
    return status.when(
      initialized: () => 'Необходимо закончить редактирование',
      readyToLoadFile: (_) => 'Ожидает начала загрузки',
      loadingFile: (current, total) =>
          'Загружается ${_formatBytes(current, 1)} из ${_formatBytes(total, 1)}',
      fileLoaded: (_) => 'Файл загружен',
      paused: (_) => 'Приостановлено',
    );
  }
}

String _formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return '0 B';
  const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];

  final i = (math.log(bytes) / math.log(1024)).floor();
  final bytesAsString = (bytes / math.pow(1024, i)).toStringAsFixed(decimals);

  return '$bytesAsString ${suffixes[i]}';
}
