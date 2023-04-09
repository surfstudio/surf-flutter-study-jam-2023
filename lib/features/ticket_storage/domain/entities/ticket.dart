import '../../enum/ticket_state.dart';

class Ticket {
  final String key;
  final String name;
  final String url;
  final TicketState state;
  final DateTime timeAdded;
  final LoadingProgress loadingProgress;

  Ticket({
    required this.key,
    required this.name,
    required this.url,
    required this.state,
    required this.timeAdded,
    required this.loadingProgress,
  });

  Ticket copyWith({
    String? key,
    String? name,
    String? url,
    TicketState? state,
    DateTime? timeAdded,
    LoadingProgress? loadingProgress,
  }) =>
      Ticket(
        key: key ?? this.key,
        name: name ?? this.name,
        url: url ?? this.url,
        state: state ?? this.state,
        timeAdded: timeAdded ?? this.timeAdded,
        loadingProgress: loadingProgress ?? this.loadingProgress,
      );
}

class LoadingProgress {
  final int downloaded;
  final int total;
  final List<int> loadedData;

  LoadingProgress({
    required this.downloaded,
    required this.total,
    this.loadedData = const [],
  });
  factory LoadingProgress.initial() => LoadingProgress(
        downloaded: 0,
        total: 0,
        loadedData: [],
      );
}
