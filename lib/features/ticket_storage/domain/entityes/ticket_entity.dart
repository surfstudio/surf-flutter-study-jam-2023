import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_loading_states.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';

/// Сущность билета.
@immutable
class TicketEntity {
  /// ID билета.
  final String id;

  /// Название билета.
  ///
  /// Формируется из конечного пути ссылки.
  final String name;

  /// Тип билета.
  ///
  /// Используется для отображения иконки. Например "Поезд" или "Сомолёт".
  final TicketType ticketType;

  /// Текущее значение прогресса загрузки в процентах.
  ///
  /// Значение должно находиться в пределах от 0 до 1,
  /// где 0 - не загружено, 1 - загружено полностью.
  final double loadingProgress;

  /// Состояние загрузки билета.
  ///
  /// Например: "Ожидает начала загрузки", "Загружается" или "Файл загружен".
  final TicketLoadingStates loadingState;

  /// @nodoc
  const TicketEntity({
    required this.id,
    required this.name,
    required this.ticketType,
    required this.loadingProgress,
    required this.loadingState,
  });

  /// @nodoc
  TicketEntity copyWith({
    String? id,
    String? name,
    TicketType? ticketType,
    double? loadingProgress,
    TicketLoadingStates? loadingState,
  }) {
    return TicketEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      ticketType: ticketType ?? this.ticketType,
      loadingProgress: loadingProgress ?? this.loadingProgress,
      loadingState: loadingState ?? this.loadingState,
    );
  }
}
