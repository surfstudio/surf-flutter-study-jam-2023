import 'package:flutter/material.dart';

/// Диалог добавления билетов.
class AddTicketDialog extends StatelessWidget {
  /// Заголовок диалога.
  final String title;

  /// Название кнопки добавления билета.
  final String addButtonLabel;

  /// Название текстового поля.
  final String textFieldLabel;

  /// Нажатие кнопки добавления билета.
  final VoidCallback onAddButtonPressed;

  /// @nodoc
  const AddTicketDialog({
    required this.title,
    required this.onAddButtonPressed,
    required this.addButtonLabel,
    required this.textFieldLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      title: Text(title),
      children: [
        TextFormField(
          decoration: InputDecoration(
            label: Text(textFieldLabel),
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: onAddButtonPressed,
          child: Text(addButtonLabel),
        ),
      ],
    );
  }
}
