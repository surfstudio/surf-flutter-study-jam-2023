import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/style_themes.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          const SizedBox(height: 10),
          Text(
            'Загрузка...',
            style: StyleThemes.commonTextStyle,
          ),
        ],
      ),
    );
  }
}
