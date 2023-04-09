import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';

class TicketListInteractor extends ChangeNotifier {
  String dirLink = '';
  String dirLoad = '';
  String dirLoaded = '';

  Future<void> createDir() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();

    await Directory('${appDocDir.path}/link')
        .create(recursive: true)
        .then((value) => dirLink = value.path);
    await Directory('${appDocDir.path}/load')
        .create(recursive: true)
        .then((value) => dirLoad = value.path);
    await Directory('${appDocDir.path}/loaded')
        .create(recursive: true)
        .then((value) => dirLoaded = value.path);
  }

  Future<List<Ticket>> loadListTicket() async {
    List<Ticket> ret = [];

    //var getFiles();

    for (int i = 0; i < 20; i++) {
      ret.add(Ticket(TypeTicketEnum.show, i.toString(), StatusEnum.linkSaved));
    }

    return ret;
  }
}



List<FileInfo> getFiles(Directory directory) {
  List<FileInfo> files = [];

  directory.listSync(recursive: true).forEach((FileSystemEntity entity) {
    if (entity is File) {
      files.add(FileInfo(entity.path.split('/').last, entity.lastAccessedSync(),
          entity.parent.path));
    }
  });

  return files;
}

class FileInfo {
  final String name;
  final DateTime createdAt;
  final String parentDirectory;

  FileInfo(this.name, this.createdAt, this.parentDirectory);

  @override
  String toString() {
    return '$name: $createdAt $parentDirectory';
  }
}
