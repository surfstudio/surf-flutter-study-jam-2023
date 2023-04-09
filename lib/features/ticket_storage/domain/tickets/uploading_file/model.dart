import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';

part 'model.freezed.dart';

@freezed
class UploadingTicketFile with _$UploadingTicketFile {
  factory UploadingTicketFile({
    required CancelToken cancelToken,
    required TicketModel ticket,
  }) = _UploadingTicketFile;
}