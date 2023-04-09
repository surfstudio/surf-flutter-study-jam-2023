import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_strings.dart';

/// Текстовое поле для ввода url билета
class UrlFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const UrlFieldWidget({
    super.key,
    required this.controller,
  });

  @override
  State<UrlFieldWidget> createState() => _UrlFieldWidgetState();
}

class _UrlFieldWidgetState extends State<UrlFieldWidget> {
  final String _text = '';

  String? get _errorText {
    final text = widget.controller.value.text;
    final pdfUrlRegex = RegExp(
      AppStrings.regExpPdfUrl,
      caseSensitive: false,
    );

    if (!pdfUrlRegex.hasMatch(text)) {
      return AppLocalizations.of(context)!.enterTheCorrectUrl;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.url,
      onChanged: (text) => setState(() => _text),
      decoration: InputDecoration(
        labelText: AppLocalizations.of(context)!.enterTheUrl,
        errorText: widget.controller.value.text.isNotEmpty ? _errorText : null,
      ),
    );
  }
}
