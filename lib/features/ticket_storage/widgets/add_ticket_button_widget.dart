import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/url_input_form_widget.dart';

/// Кнопка для добавления билетов
class AddTicketButtonWidget extends StatelessWidget {
  const AddTicketButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.p24),
        ),
        context: context,
        builder: (context) => const UrlInputFormWidget(),
      ),
      label: Text(
        AppLocalizations.of(context)!.add,
        style: AppTextStyle.buttonText,
      ),
      backgroundColor: AppColors.lavender,
      shape: AppSizes.roundedRectangleBorder16,
    );
  }
}
