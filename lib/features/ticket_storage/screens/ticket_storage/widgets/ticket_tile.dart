import 'package:flutter/material.dart';

/// Элемент списка билетов.
class TicketTile extends StatelessWidget {
  /// Название билета.
  ///
  /// Формируется из конечного пути ссылки.
  final String label;

  /// Иконка символизирующая тип билета.
  ///
  /// Например "Поезд" или "Сомолёт".
  final IconData leadingIconData;

  /// Иконка кнопки загрузки билета.
  final IconData trailingIconData;

  /// Действие по нажатию на кнопку загрузки билета.
  final VoidCallback onTrailingPressed;

  /// @nodoc
  const TicketTile({
    super.key,
    required this.label,
    required this.leadingIconData,
    required this.trailingIconData,
    required this.onTrailingPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIconData),
      title: Text(label),
      trailing: IconButton(
        icon: Icon(trailingIconData),
        onPressed: onTrailingPressed,
      ),
    );
  }
}
