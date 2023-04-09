part of 'document_view_bloc.dart';

@freezed
class DocumentViewEvent with _$DocumentViewEvent {
  const DocumentViewEvent._();
  const factory DocumentViewEvent.load({
    required Ticket ticket,
  }) = DocumentLoadEvent;
}
