import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/data/database/models/ticket_file.dart';
import 'package:surf_flutter_study_jam_2023/data/datasource/local/pdf_local_repository.dart';
import 'package:surf_flutter_study_jam_2023/data/datasource/remote/pdf_remote_repository.dart';

class PdfRepository {
  final PdfRemoteRepository _pdfRemoteRepository;
  final PdfLocalRepository _pdfLocalRepository;

  PdfRepository({
    required PdfRemoteRepository pdfRemoteRepository,
    required PdfLocalRepository pdfLocalRepository,
  })  : _pdfRemoteRepository = pdfRemoteRepository,
        _pdfLocalRepository = pdfLocalRepository;

  Future<void> downloadPdf({
    required String pdfUrl,
    Function(int, int)? onReceiveProgress,
  }) async {
    final tempDir = await getTemporaryDirectory();
    try {
      final file = await _pdfRemoteRepository.downloadPdf(
        pdfUrl: pdfUrl,
        onReceiveProgress: (receivedBytes, totalBytes) {
          final fileName = pdfUrl.split('/').last;
          final savePath = tempDir.path + fileName;

          final file = TicketFile(
            name: fileName,
            filePath: savePath,
            receivedBytes: receivedBytes,
            totalBytes: totalBytes,
            datetime: DateTime.now(),
          );
          _pdfLocalRepository.savePdfFile(file);
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
