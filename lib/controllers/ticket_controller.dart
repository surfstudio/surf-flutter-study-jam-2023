import 'dart:async';

import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/views/ticket_create_view.dart';
import 'package:flutter/services.dart';

import '../services/fileDownloader.dart';

class TicketController {
  final downloader = FileDownloader();

  // todo: Попробовать сделать через ValueNotifier
  // ValueNotifier<String> _myModel = ValueNotifier<String>('initial data');

  final StreamController<List<Ticket>> _ticketStreamController =
      StreamController<List<Ticket>>.broadcast();

  Stream<List<Ticket>> get tasksStream => _ticketStreamController.stream;

  List<Ticket> _tickets = [];

  Future<void> downloadTicket(
      BuildContext context, Ticket ticket, Function() callback) async {
    ticket.isLoading = true;
    callback();

    if (ticket.url != null && ticket.url!.isNotEmpty) {
      try {
        final file = await downloader.downloadFile(
          ticket.url!,
          "${ticket.id}.pdf",
          (received, total) {
            if (total != -1) {
              print('${(received / total * 100).toStringAsFixed(0)}%');
              ticket.persentLoaded = (received / total * 100).toInt();
              callback();
            }
          },
        );

        print('Файл загружен и сохранен: ${file.path}');
        ticket.filePath = file.path;
        ticket.isLoaded = true;
        callback();
      } catch (e) {
        print('Ошибка загрузки файла: $e');
      }
    }
    ticket.isLoading = false;
    callback();
  }

  void addTicket(Ticket task) {
    task.id = DateTime.now().millisecondsSinceEpoch;
    task.fileName = task.url?.split("/").last;
    print(task.fileName);
    _tickets.add(task);
    _dispatch();
  }

  void deleteTicket(Ticket task) {
    // todo: Добавить возможность удаления билетов
  }

  bool validateUrl(String url) {
    bool isURLValid = false;
    try {
      isURLValid = Uri.parse(url).host.isNotEmpty;
    } catch (e) {}

    if (isURLValid) {
      if (url.endsWith(".pdf")) {
        return true;
      }
    }
    return false;
  }

  Future<void> handleAddTicketButtonPressed(BuildContext context) async {
    ClipboardData? cdata = await Clipboard.getData(Clipboard.kTextPlain);
    String? copiedtext = cdata?.text;
    String copiedUrl = "";
    if (copiedtext != null && copiedtext.isNotEmpty) {
      if (this.validateUrl(copiedtext!)) {
        copiedUrl = copiedtext;
      }
    }

    // ignore: use_build_context_synchronously
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 0.5,
          minChildSize: 0.5,
          expand: false,
          snap: true,
          builder: (context, scrollController) {
            return TicketCreateView(this, copiedUrl);
          }),
    );
  }

  void _dispatch() {
    _ticketStreamController.sink.add(_tickets);
  }

  void dispose() {
    _ticketStreamController.close();
  }
}
