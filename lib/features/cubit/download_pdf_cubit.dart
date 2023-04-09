import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/data/datasource/pdf_repository.dart';

part 'download_pdf_cubit.freezed.dart';
part 'download_pdf_state.dart';

class DownloadPdfCubit extends Cubit<DownloadPdfState> {
  final PdfRepository _pdfRepository;

  DownloadPdfCubit(this._pdfRepository)
      : super(
          const DownloadPdfState.initial(),
        );

  Future<void> downloadPdf(String url) async {
    await _pdfRepository.downloadPdf(
      pdfUrl: url,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = received / 1024000;

          emit(
            DownloadPdfState.downloadPdfInProcess(
              progress: progress.toStringAsFixed(2),
              received: (received / 1024000).toStringAsFixed(2),
              total: (total / 1024000).toStringAsFixed(2),
            ),
          );
        }
      },
    );
  }
}
