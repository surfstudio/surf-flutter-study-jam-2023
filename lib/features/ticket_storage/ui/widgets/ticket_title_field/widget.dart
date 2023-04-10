import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/assets/strings/locale/ru.dart';
import 'package:surf_flutter_study_jam_2023/assets/text/text_extension.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';

class TicketTitleField extends StatefulWidget {
  final TicketModel ticket;
  final ValueChanged<String> onUrlChanged;

  const TicketTitleField({
    super.key,
    required this.ticket,
    required this.onUrlChanged,
  });

  @override
  State<TicketTitleField> createState() => _TicketTitleFieldState();
}

class _TicketTitleFieldState extends State<TicketTitleField> {
  late final TextEditingController _urlController;

  @override
  void initState() {
    super.initState();

    final initialUrl = widget.ticket.status.maybeWhen(
      initialized: () => '',
      readyToLoadFile: (url) => url.value.fold(
        (l) => l.failedValue,
        (r) => r,
      ),
      orElse: () => '',
    );
    _urlController = TextEditingController(text: initialUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          controller: _urlController,
          decoration: InputDecoration(
            labelText: AppStrings.ticketStorage.enterUrlPlaceholder,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                widget.onUrlChanged(_urlController.text);
                Navigator.pop(context);
              },
              child: Text(
                AppStrings.ticketStorage.addButtonLabel,
                style: AppTextTheme.of(context).regular14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
