import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileStatusWidget extends StatefulWidget {
  final String status;

  FileStatusWidget({required this.status});

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
            // Text("1")
            SizedBox(
              width: 200,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: LinearProgressIndicator(
                  minHeight: 5,
                  // value: 0.4,
                ),
              ),
            )
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
                child: Text("Файл загружается"))
          ],
        ),
      ],
    );
  }
}
