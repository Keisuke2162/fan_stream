class Streamer {
  final int id;
  final String yourubeId;
  final String name;
  final String thumbnailUrl;
  final int colorCode;
  final StreamGroup group;

  Streamer(
      {required this.id,
      required this.yourubeId,
      required this.name,
      required this.thumbnailUrl,
      required this.colorCode,
      required this.group});
}

enum StreamGroup {
  vspo,
  hololive,
  neoporte,
}

extension StreamGroupExtension on StreamGroup {
  String get name {
    switch (this) {
      case StreamGroup.vspo:
        return 'Vspo';
      case StreamGroup.hololive:
        return 'hololive';
      case StreamGroup.neoporte:
        return 'Neoporte';
    }
  }
}
