part of 'document_view_bloc.dart';

@freezed
class DocumentViewState with _$DocumentViewState {
  const DocumentViewState._();
  const factory DocumentViewState.init() = DocumentInitState;
  const factory DocumentViewState.loaded({
    required Uint8List document,
  }) = DocumentLoadedState;
  const factory DocumentViewState.loading() = DocumentLoadingState;
  const factory DocumentViewState.error({
    required String msg,
  }) = DocumentErrorState;
}
