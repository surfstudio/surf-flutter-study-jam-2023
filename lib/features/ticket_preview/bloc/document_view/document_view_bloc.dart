import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';

import '../../domain/repositories/document_repository_abstract.dart';

part 'document_view_event.dart';
part 'document_view_state.dart';
part 'document_view_bloc.freezed.dart';

class DocumentViewBloc extends Bloc<DocumentViewEvent, DocumentViewState> {
  final DocumentRepositoryAbstract documentRepository;
  DocumentViewBloc({
    required this.documentRepository,
  }) : super(const DocumentViewState.init()) {
    on<DocumentViewEvent>((event, emit) async {
      await event.map(
        load: (event) async {
          emit(const DocumentViewState.loading());
          final document = await documentRepository.loadDocument(
            url: event.ticket.url,
          );
          if (document?.isNotEmpty ?? false) {
            emit(
              DocumentViewState.loaded(
                document: document!,
              ),
            );
          } else {
            emit(
              const DocumentViewState.error(
                msg: 'Не удалось загрузить документ',
              ),
            );
          }
        },
      );
    });
  }
}
