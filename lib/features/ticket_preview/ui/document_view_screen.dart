import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdfx/pdfx.dart';

import '../../ticket_storage/ui/theme/style_themes.dart';
import '../../ticket_storage/ui/widgets/loading.dart';
import '../bloc/document_view/document_view_bloc.dart';

class DocumentViewScreen extends StatefulWidget {
  const DocumentViewScreen({super.key});

  @override
  State<DocumentViewScreen> createState() => _DocumentViewScreenState();
}

class _DocumentViewScreenState extends State<DocumentViewScreen> {
  int _actualPageNumber = 0, _allPagesCount = 0;
  PdfController? _pdfController;
  bool showBackButton = false;
  String? previousPage;

  @override
  void initState() {
    final state = context.read<DocumentViewBloc>().state;
    if (state is DocumentLoadedState) {
      _pdfController = PdfController(
        document: PdfDocument.openData(state.document),
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    _pdfController?.dispose();
    super.dispose();
  }

  Widget pdfPaginationActions() {
    return Row(
      children: [
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController!.previousPage(
              curve: Curves.ease,
              duration: const Duration(milliseconds: 100),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController!.nextPage(
              curve: Curves.ease,
              duration: const Duration(milliseconds: 100),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Просмотр документа',
            style: StyleThemes.commonWhiteStyle.copyWith(fontSize: 16),
          ),
          actions: [
            BlocBuilder<DocumentViewBloc, DocumentViewState>(
              builder: (context, state) {
                if (state is DocumentLoadedState) {
                  return pdfPaginationActions();
                }
                return const SizedBox();
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            BlocConsumer<DocumentViewBloc, DocumentViewState>(
              listener: (context, state) {
                if (state is DocumentLoadedState) {
                  _pdfController = PdfController(
                    document: PdfDocument.openData(state.document),
                  );
                }
              },
              buildWhen: (previous, current) =>
                  current is! DocumentLoadingState,
              builder: (context, state) {
                if (state is DocumentLoadedState) {
                  if (_pdfController != null) {
                    return PdfView(
                        scrollDirection: Axis.vertical,
                        builders: PdfViewBuilders<DefaultBuilderOptions>(
                          options: const DefaultBuilderOptions(),
                          documentLoaderBuilder: (context) => const Center(
                            child: Loading(
                              isTextVisible: false,
                            ),
                          ),
                          pageLoaderBuilder: (context) => const Center(
                            child: Loading(
                              isTextVisible: false,
                            ),
                          ),
                        ),
                        controller: _pdfController!,
                        onDocumentLoaded: (document) {
                          setState(() {
                            _actualPageNumber = 1;
                            _allPagesCount = document.pagesCount;
                          });
                        },
                        onPageChanged: (page) {
                          setState(() {
                            _actualPageNumber = page;
                          });
                        });
                  }
                }
                if (state is DocumentErrorState) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        state.msg,
                        style: StyleThemes.commonDarkStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }

                return Container();
              },
            ),
            BlocBuilder<DocumentViewBloc, DocumentViewState>(
              builder: (context, state) {
                if (state is DocumentLoadingState) {
                  return const Center(
                    child: Loading(),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
