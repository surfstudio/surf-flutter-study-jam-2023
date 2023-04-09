import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Плейсхолдер для списка билетов если там пусто.
class TicketsListPlaceholderWidget extends StatelessWidget {
  const TicketsListPlaceholderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppLocalizations.of(context)!.noAvailableData,
        style: AppTextStyle.bodyText,
      ),
    );
  }
}
