import 'package:surf_flutter_study_jam_2023/data/database.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_objects.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/file_path/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/status/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/title/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/url/value_object.dart';

class TicketModelPersistenceModelConverter {
  TicketModel toDomainModel(TicketsPersistenceModel pm) {
    late TicketStatus status;

    switch (pm.status) {
      case 'initialized':
        status = const TicketStatus.initialized();
        break;
      case 'readyToLoadFile':
        status = TicketStatus.readyToLoadFile(TicketUrl(pm.url ?? ''));
        break;
      case 'loadingFile':
        status = TicketStatus.loadingFile(
          pm.currentSize ?? 0,
          pm.totalSize ?? 0,
        );
        break;
      case 'fileLoaded':
        status = TicketStatus.fileLoaded(TicketFilePath(pm.filePath ?? ''));
        break;
    }

    return TicketModel(
      id: UniqueId.fromUniqueString(pm.id),
      title: TicketTitle(pm.title),
      status: status,
      dateCreated: pm.dateCreated,
    );
  }

  TicketsPersistenceModel toPersistenceModel(TicketModel m) {
    return TicketsPersistenceModel(
      id: m.id.getOrCrash(),
      title: m.title.value.fold((l) => l.failedValue, (r) => r),
      status: m.status.when(
        initialized: () => 'initialized',
        readyToLoadFile: (_) => 'readyToLoadFile',
        loadingFile: (_, __) => 'loadingFile',
        fileLoaded: (_) => 'fileLoaded',
        paused: (_) => 'paused',
      ),
      filePath: m.status.maybeWhen(
        fileLoaded: (status) =>
            status.value.fold((l) => l.failedValue, (r) => r),
        orElse: () => null,
      ),
      url: m.status.maybeWhen(
        readyToLoadFile: (status) =>
            status.value.fold((l) => l.failedValue, (r) => r),
        orElse: () => null,
      ),
      currentSize: m.status.maybeWhen(
        loadingFile: (currentSize, _) => currentSize,
        orElse: () => null,
      ),
      totalSize: m.status.maybeWhen(
        loadingFile: (_, totalSize) => totalSize,
        orElse: () => null,
      ),
      dateCreated: m.dateCreated,
    );
  }
}
