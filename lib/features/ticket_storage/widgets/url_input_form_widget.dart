import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';
import 'package:surf_flutter_study_jam_2023/features/cubit/download_pdf_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/url_field_widget.dart';

/// Форма с полем ввода и кнопкой добаления билета в приложение
class UrlInputFormWidget extends StatefulWidget {
  const UrlInputFormWidget({
    super.key,
  });

  @override
  State<UrlInputFormWidget> createState() => _UrlInputFormWidgetState();
}

class _UrlInputFormWidgetState extends State<UrlInputFormWidget> {
  final _urlController = TextEditingController();

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppSizes.edgeOnlyT8L16R16,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: AppSizes.p40,
              height: AppSizes.p4,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.p12),
                  topRight: Radius.circular(AppSizes.p12),
                ),
              ),
            ),
            AppSizes.gapH40,
            UrlFieldWidget(controller: _urlController),
            AppSizes.gapH40,
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                context
                    .read<DownloadPdfCubit>()
                    .downloadPdf(_urlController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.royalPurple,
                padding: AppSizes.edgeSymmetricV16H32,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.p50),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.add,
              ),
            ),
            AppSizes.gapH24,
          ],
        ),
      ),
    );
  }
}
