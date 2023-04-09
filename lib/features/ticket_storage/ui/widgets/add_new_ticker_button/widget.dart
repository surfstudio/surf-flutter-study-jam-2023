import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/assets/strings/locale/ru.dart';
import 'package:surf_flutter_study_jam_2023/assets/text/text_extension.dart';

class AddNewTicketButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddNewTicketButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);

    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(
        AppStrings.ticketStorage.addButtonLabel,
        style: textTheme.medium14,
      ),
    );
  }
}
