

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/data/interactor/ticket_list_interactor.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/res/color_palette.dart';
import 'package:surf_flutter_study_jam_2023/features/res/svg_icons.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/ticket/bloc/ticket_item_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/ticket/indicator.dart';

class TicketItem extends StatelessWidget {
  Ticket ticket;

  TicketItem(this.ticket, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketItemBloc, TicketItemState>(
        builder: (context, state) {
        return Row(
          children: [
            SvgPicture.asset(
              SvgIcons.show,
              height: 30,
              color: ColorPalette.greenColor,
            ),
            Column(
              children: [
                Text('Билет'),
                Container(width: 100, child: Indicator(ticket.downloadLink)),
                state.props.length>0 && state.props.first is int?

                Text('${state.props.first}'):
                Text('Не загружен')
                ,
              ],
            ),
            IconButton(
              onPressed: () {
                _onPressed(context, ticket.downloadLink);
              },
              icon: const Icon(Icons.cloud_download,),
            )
          ],
        );
      }
    );
  }
}

_onPressed(BuildContext context, String downloadLink) async {
  Dio dio = Dio();


  String url = 'https://journal-free.ru/download/dachnye-sekrety-11-noiabr-2019.pdf';

  String dirLink = context
      .read<TicketListInteractor>()
      .dirLink;

  String savePath = '$dirLink/${url
      .split('/')
      .last} ';

  debugPrint(' savePath = ${savePath}');

  try {
    await dio.download(
        url,
        savePath,
        onReceiveProgress: (received, total) {

          debugPrint(' $received, $total');

          int process = ((received / total)*10000) ~/ 100;

          context.read<TicketItemBloc>().add(
              TicketItemLoadEvent(process));
        });
  } catch (e) {
    debugPrint('Ошибка загрузки! ${e.toString()}');
  }
}

