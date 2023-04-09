import 'package:flutter/material.dart';

///
class NoDataStateWidget extends StatelessWidget {
  /// Содержание текста об отсутствии данных.
  final String noDataMessage;

  /// Стиль текста об отсутствии данных.
  final TextStyle noDataMessageStyle;

  /// @nodoc
  const NoDataStateWidget({
    super.key,
    required this.noDataMessage,
    required this.noDataMessageStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        noDataMessage,
        style: noDataMessageStyle,
      ),
    );
  }
}
