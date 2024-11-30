import 'package:fan_stream/entities/streamer/streamer.dart';

// Streamerをグループごとに分類する
Map<StreamGroup, List<Streamer>> groupStreamers(List<Streamer> streamers) {
  Map<StreamGroup, List<Streamer>> groupedStreamers = {};

  for (var streamer in streamers) {
    // グループが存在しない場合は新しいリストを作成
    if (groupedStreamers[streamer.group] == null) {
      groupedStreamers[streamer.group] = [];
    }
    groupedStreamers[streamer.group]?.add(streamer);
  }

  return groupedStreamers;
}
