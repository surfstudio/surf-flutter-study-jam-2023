import 'package:flutter/material.dart';

import '../controllers/ticket_controller.dart';

class TicketCreateView extends StatefulWidget {
  final TicketController _ticketController;

  TicketCreateView(this._ticketController);

  @override
  State<TicketCreateView> createState() => _TicketCreateViewState();
}

class _TicketCreateViewState extends State<TicketCreateView> {
  final _urlController = TextEditingController();

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
              // child: Expanded(
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
                                return 'Please enter a title';
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
                              // Вызываем метод handleAddUserButtonPressed() контроллера
                              //  _ticketController.addTicket();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                              Navigator.pop(context);
                              // .addTask(Task(name: _titleController.text));
                            },
                            child: Text('Добавить'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          // )
        ]);
  }
}
