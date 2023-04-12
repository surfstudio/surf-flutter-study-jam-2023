import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Тип билета.
///
/// Например "Самолёт" или "Поезд".
enum TicketType {
  /// Самолёт.
  train,

  /// Поезд.
  airplane;

  /// Юзер-френдли название билета.
  ///
  /// Можно применить в всплывающей подсказке, например.
  String getName(AppLocalizations l10n) {
    switch (this) {
      case TicketType.train:
        return l10n.trainTicketName;
      case TicketType.airplane:
        return l10n.airplaneTicketName;
    }
  }

  /// Иконка для билета.
  IconData get iconData {
    switch (this) {
      case TicketType.train:
        return Icons.train_outlined;
      case TicketType.airplane:
        return Icons.airplane_ticket_outlined;
    }
  }
}
