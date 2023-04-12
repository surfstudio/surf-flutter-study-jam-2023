import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
// import 'package:open_filex/open_filex.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket.dart';

class ScreenArguments {
  final Ticket ticket;

  ScreenArguments(this.ticket);
}

class TicketOpenView extends StatefulWidget {
  const TicketOpenView({super.key});

  static const routeName = '/view';

  @override
  State<TicketOpenView> createState() => _TicketOpenViewState();
}

class _TicketOpenViewState extends State<TicketOpenView> {
  int? pages = 0;

  int? currentPage = 0;

  bool isReady = false;

  String errorMessage = '';

  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();

  // @override
  // void initState() {
  // }
  // Пытаслся сделать через OpenFilex
  // Future<void> openFile(filePath) async {
  //   final result = await OpenFilex.open(filePath);
  //   var _openResult = 'Unknown';

  //   setState(() {
  //     _openResult = "type=${result.type}  message=${result.message}";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    try {
      final File _file = File(args.ticket.filePath!);
      final _filename = basename(_file.path);
      final _extension = extension(_file.path);
      final _nameWithoutExtension = basenameWithoutExtension(_file.path);
      print('Filename: $_filename');
      print('Filename without extension: $_nameWithoutExtension');
      print('Extension: $_extension');
      print(_file.lengthSync());
      // OpenFile
      // OpenFilex.open(args.filePath);
      // openFile(args.filePath);
      // Пытался сделать через OpenFilex
    } catch (e) {
      return Scaffold(
        appBar: AppBar(
          title: Text("error file"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(args.ticket.fileName!),
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: args.ticket.filePath,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: true,
            pageSnap: true,
            defaultPage: currentPage!,
            fitPolicy: FitPolicy.BOTH,
            preventLinkNavigation: false,
            onRender: (_pages) {
              setState(() {
                pages = _pages;
                isReady = true;
              });
            },
            onError: (error) {
              setState(() {
                errorMessage = error.toString();
              });
              print(error.toString());
            },
            onPageError: (page, error) {
              setState(() {
                errorMessage = '$page: ${error.toString()}';
              });
              print('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onLinkHandler: (String? uri) {
              print('goto uri: $uri');
            },
            onPageChanged: (int? page, int? total) {
              print('page change: $page/$total');
              setState(() {
                currentPage = page;
              });
            },
          ),
          errorMessage.isEmpty
              ? !isReady
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container()
              : Center(
                  child: Text(errorMessage),
                )
        ],
      ),
    );
  }
}
