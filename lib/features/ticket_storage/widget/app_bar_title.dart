import 'package:flutter/material.dart';

///AppBarTitle
class AppBarTitle extends StatelessWidget {
  ///
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[Text('Хранение билетов')],
      );
}
