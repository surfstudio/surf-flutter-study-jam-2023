import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';

import '../controllers/ticket_controller.dart';

class TicketCreateView extends StatefulWidget {
  final TicketController _ticketController;
  final String? _url;

  TicketCreateView(this._ticketController, this._url);

  @override
  State<TicketCreateView> createState() => _TicketCreateViewState();
}

class _TicketCreateViewState extends State<TicketCreateView> {
  final _urlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    if (widget._url != null) {
      _urlController.text = widget._url!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 15,
            child: Container(
              width: 60,
              height: 7,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black26,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: TextFormField(
                              controller: _urlController,
                              decoration: InputDecoration(
                                labelText: 'URL',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Введите корректный Url';
                                }

                                if (!widget._ticketController
                                    .validateUrl(value)) {
                                  return 'Введите корректный Url (адрес долен оканчиваться на  .pdf)';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(100),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Файл добавлен')),
                                  );
                                  widget._ticketController.addTicket(
                                      Ticket(url: _urlController.text));

                                  Navigator.pop(context);
                                }
                              },
                              child: Text('Добавить'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ]);
  }
}
