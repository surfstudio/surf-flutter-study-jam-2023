import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_list/tickets_list_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/theme/style_themes.dart';
import 'package:validators/validators.dart';

class UrlBottomSheet extends StatefulWidget {
  const UrlBottomSheet({super.key});

  @override
  State<UrlBottomSheet> createState() => _UrlBottomSheetState();
}

class _UrlBottomSheetState extends State<UrlBottomSheet> {
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  @override
  void initState() {
    controller.text =
        'https://journal-free.ru/download/profil-41-oktiabr-noiabr-2019.pdf';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Form(
                key: formKey,
                child: TextFormField(
                  controller: controller,
                  validator: (value) {
                    if (!isURL(value, requireProtocol: true)) {
                      return 'Введите корректный Url';
                    }
                    return null;
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  BlocProvider.of<TicketsListBloc>(context).add(
                    TicketsListEvent.addTicket(
                      url: controller.text,
                      onSuccess: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Файл успешо добавлен'),
                            duration: Duration(milliseconds: 1500),
                          ),
                        );
                        Navigator.pop(context);
                      },
                      onError: (msg) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(msg),
                            duration: const Duration(milliseconds: 2500),
                          ),
                        );
                      },
                    ),
                  );
                  controller.clear();
                }
              },
              child: const Text(
                'Добавить',
                style: StyleThemes.commonDarkStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
