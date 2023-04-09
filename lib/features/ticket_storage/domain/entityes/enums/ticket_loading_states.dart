import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Состояния загрузки билетов.
enum TicketLoadingStates {
  /// Ожидает начала загрузки.
  waiting,

  /// Загружается.
  loading,

  /// Загружен.
  loaded;

  /// Иконка кнопки загрузки билета.
  IconData get iconData {
    switch (this) {
      case TicketLoadingStates.waiting:
        return Icons.cloud_download_outlined;
      case TicketLoadingStates.loaded:
        return Icons.cloud_done;
      case TicketLoadingStates.loading:
        return Icons.pause_circle_outline_sharp;
    }
  }

  /// Описание текущего состояния загрузки.
  ///
  /// Например "Ожидает начала загрузки", "Загружается 1.8 из 12.6"
  /// или "Файл загружен".
  ///
  /// Если [currentSize] или [totalSize] не переданы, в дебаге для [loaded]
  /// сработает ассерт, но в проде подставится упрощённое описание "Загружается".
  String getDescription(
    AppLocalizations l10n, {
    double? currentSize,
    double? totalSize,
  }) {
    switch (this) {
      case TicketLoadingStates.waiting:
        return l10n.ticketLoadingDescriptionWaiting;
      case TicketLoadingStates.loaded:
        return l10n.ticketLoadingDescriptionLoaded;
      case TicketLoadingStates.loading:
        assert(
          currentSize != null && totalSize != null,
          'Не были переданы параметры состояния загрузки',
        );
        if (currentSize == null || totalSize == null) {
          return l10n.ticketLoadingDescriptionLoading;
        }
        return l10n.ticketLoadingDescriptionLoadingWithParams(
          currentSize,
          totalSize,
        );
    }
  }
}
