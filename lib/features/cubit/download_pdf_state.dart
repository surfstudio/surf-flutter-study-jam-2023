part of 'download_pdf_cubit.dart';

@freezed
class DownloadPdfState with _$DownloadPdfState {
  const factory DownloadPdfState.initial() = _Initial;

  const factory DownloadPdfState.downloadPdfInProcess({
    required String progress,
    required String received,
    required String total,
  }) = DownloadPdfInProcess;

  const factory DownloadPdfState.downloadPdfSuccess(File file) =
      _DownloadPdfSuccess;

  const factory DownloadPdfState.downloadPdfError() = _DownloadPdfError;
}
