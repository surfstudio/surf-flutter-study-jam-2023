import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Диалог добавления билетов.
class AddTicketDialog extends StatefulWidget {
  /// Нажатие кнопки добавления билета.
  final ValueChanged<String> onAddButtonPressed;

  /// Локализованные строковые ресурсы проекта.
  final AppLocalizations l10n;

  /// @nodoc
  const AddTicketDialog({
    required this.onAddButtonPressed,
    required this.l10n,
    super.key,
  });

  @override
  State<AddTicketDialog> createState() => _AddTicketDialogState();
}

class _AddTicketDialogState extends State<AddTicketDialog> {
  final _formKey = GlobalKey<FormState>();

  String? url;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      title: Text(widget.l10n.addTicketDialogTitle),
      children: [
        TextFormField(
          key: _formKey,
          validator: _urlValidator,
          onChanged: _onChangedUrl,
          decoration: InputDecoration(
            label: Text(widget.l10n.inputUrlLabel),
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: _onAddUrlPressed,
          child: Text(widget.l10n.addButton),
        ),
      ],
    );
  }

  void _onChangedUrl(String? url) {
    this.url = url;
  }

  void _onAddUrlPressed() {
    final isValidUrl = _formKey.currentState?.validate() ?? false;
    if (isValidUrl && url != null) {
      assert(
        url != null,
        'Если валидация прошла успешно, url не может ровняться нулю. Проверьте объявление TextFormField выше.',
      );
      widget.onAddButtonPressed(url!);
    }
  }

  String? _urlValidator(String? url) {
    if (url == null || url.isEmpty) {
      return widget.l10n.emptyUrlValidator;
    }
    if (!Uri.parse(url).isAbsolute) {
      return widget.l10n.incorrectUrlValidator;
    }

    return null;
  }
}
