import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/file_path/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/url/value_object.dart';

part 'value_object.freezed.dart';

@freezed
class TicketStatus with _$TicketStatus {
  const factory TicketStatus.initialized() = Initialized;
  const factory TicketStatus.readyToLoadFile(TicketUrl url) = ReadyToLoadFile;
  const factory TicketStatus.loadingFile(int currentSize, int totalSize) = Loading;
  const factory TicketStatus.fileLoaded(TicketFilePath file) = FileLoaded;
  const factory TicketStatus.pause(CancelToken token) = Pause;
}