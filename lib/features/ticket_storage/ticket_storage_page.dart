import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/domain/app_typography.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/ticket_storage_bloc_bloc.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatefulWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  State<TicketStoragePage> createState() => _TicketStoragePageState();
}

class _TicketStoragePageState extends State<TicketStoragePage> {
  late final TextEditingController addUrlFieldcontroller;
  bool _isButtonEnabled = false;
  @override
  void initState() {
    super.initState();
    addUrlFieldcontroller = TextEditingController();
  }

  @override
  void dispose() {
    addUrlFieldcontroller.dispose();
    super.dispose();
  }

  String? _validateUrl(String? url) {
    RegExp regex = RegExp(
        r'(https?|http)://([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:,.;]*)?.pdf',
        caseSensitive: false);

    if (regex.allMatches(url ?? '').length != 1) {
      _isButtonEnabled = false;
      return 'Введите кореектный url';
    }
    _isButtonEnabled = true;

    return null;
  }

  void _enableButton() {
    if (_isButtonEnabled) {
      setState(() => _isButtonEnabled = true);
    } else {
      setState(() => _isButtonEnabled = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketStorageBlocBloc, TicketStorageBlocState>(
      builder: (context, state) {
        return Scaffold(
            body: CustomScrollView(
              slivers: [
                Theme(
                  data: ThemeData(
                    appBarTheme: const AppBarTheme(color: Colors.transparent),
                  ),
                  child: const _AppBar(),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([]),
                ),
              ],
            ),
            extendBody: true,
            persistentFooterButtons: [
              PersistentFooterButton(
                label: AppTypography.addButton,
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 20.0),
                          child: TextFormField(
                              onEditingComplete: _enableButton,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: _validateUrl,
                              controller: addUrlFieldcontroller,
                              decoration: _inputDecoration()),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: _isButtonEnabled
                                ? Colors.purple.shade200
                                : Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              AppTypography.addButton,
                              style: TextStyle(
                                color: _isButtonEnabled
                                    ? Colors.white
                                    : Colors.purple,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ).then((value) => null);
                },
              ),
              PersistentFooterButton(
                label: AppTypography.loadAllButton,
                onTap: () {},
              ),
            ]);
      },
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned: true,
        title: const Text(
          AppTypography.ticketStorage,
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 0.5,
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              AppTypography.chooseButton,
              style: TextStyle(color: Colors.purple.shade400),
            ),
          ),
        ]);
  }
}

class PersistentFooterButton extends StatelessWidget {
  const PersistentFooterButton({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 4,
        backgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration() {
  return InputDecoration(
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(
        width: 2,
        color: Colors.red.withOpacity(0.3),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(
        width: 2,
        color: Colors.red.withOpacity(0.3),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(width: 2, color: Colors.purple),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(color: Colors.purple),
    ),
    labelText: AppTypography.inputUrl,
  );
}
