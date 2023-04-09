import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileStatusTraillingWidget extends StatefulWidget {
  final String status;

  FileStatusTraillingWidget({required this.status});

  @override
  _FileStatusTraillingWidgetState createState() =>
      _FileStatusTraillingWidgetState();
}

class _FileStatusTraillingWidgetState extends State<FileStatusTraillingWidget> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    // return Icon(Icons.subdirectory_arrow_right_rounded);
    return Icon(Icons.cloud_done_outlined);
    return Icon(Icons.pause_circle_outline);
    // return Icon(Icons.cloud_download_outlined);
  }
}
