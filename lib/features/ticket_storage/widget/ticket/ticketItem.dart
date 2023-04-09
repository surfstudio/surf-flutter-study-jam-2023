import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/res/color_palette.dart';
import 'package:surf_flutter_study_jam_2023/features/res/svg_icons.dart';

class TicketItem extends StatelessWidget {

  Ticket ticket;

  TicketItem(this.ticket, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return Row(
      children: [
        SvgPicture.asset(
          SvgIcons.show,
          height: 30,
          color: ColorPalette.greenColor,
        ),
        Column(
          children: const [
            Text('Билет'),
            Text('индикатор загрузки'),
            Text('Ожидает начала загрузки'),
          ],
        ),
        SvgPicture.asset(
          SvgIcons.show,
          height: 30,
          color: ColorPalette.greenColor,
        )
      ],
    );
  }
}
