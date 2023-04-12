import 'package:flutter/material.dart';

class FileStatusWidget extends StatefulWidget {
  final bool isLoading;
  final bool isLoaded;
  final int percentLoaded;

  FileStatusWidget(
      {required this.isLoaded,
      required this.isLoading,
      required this.percentLoaded});

  @override
  _FileStatusWidgetState createState() => _FileStatusWidgetState();
}

class _FileStatusWidgetState extends State<FileStatusWidget> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            !widget.isLoaded
                ? SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: LinearProgressIndicator(
                        minHeight: 5,
                        value: widget.percentLoaded / 100,
                      ),
                    ),
                  )
                : Container()
            // Expanded(
            //     child: Container(
            //   alignment: Alignment.centerLeft,
            //   child: RotatedBox(
            //     quarterTurns: 1,
            // child: LinearProgressIndicator(
            //   minHeight: 30,
            // ),
            //   ),
            // ))
            // LinearProgressIndicator(
            //   value: 50.0,
            // )
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: !widget.isLoaded
                    ? (widget.isLoading)
                        ? Text("Файл загружается")
                        : Text("Нажмите, чтобы загрузить файл")
                    : Text("Файл загружен"))
          ],
        ),
      ],
    );
  }
}
