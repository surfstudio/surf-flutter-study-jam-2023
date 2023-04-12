import 'package:flutter/material.dart';

class FileStatusTraillingWidget extends StatefulWidget {
  final bool isLoading;
  final bool isLoaded;

  FileStatusTraillingWidget({required this.isLoading, required this.isLoaded});

  @override
  _FileStatusTraillingWidgetState createState() =>
      _FileStatusTraillingWidgetState();
}

class _FileStatusTraillingWidgetState extends State<FileStatusTraillingWidget> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    if (widget.isLoaded) {
      return Icon(Icons.cloud_done_outlined);
    } else {
      if (widget.isLoading) {
        return Icon(Icons.pause_circle_outline);
      } else {
        return Icon(Icons.cloud_download_outlined);
      }
    }
  }
}
