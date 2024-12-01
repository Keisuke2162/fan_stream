import 'package:fan_stream/entities/streamer/video.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;

class YouTubeApiClient {
  // YouTubeDataAPIエンドポイント
  static const String _baseUrl = 'https://www.googleapis.com/youtube/v3/search';

  // APIキー（のちに変更してgit管理から外す）
  static const String _apiKey = 'AIzaSyCx4a3l0K0eoHT9F8g1X_46CLwSBQ1V9Qk';

  Future<YouTubeSearchResponse> fetchVideos({
    required String channelId,
    int maxResults = 50,
    String type = 'video',
    String eventType = 'completed',
  }) async {
    try {
      final Uri url = Uri.parse('$_baseUrl?'
          'part=id,snippet'
          '&channelId=$channelId'
          '&type=$type'
          '&eventType=$eventType'
          '&maxResults=$maxResults'
          '&key=$_apiKey');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        // レスポンスをJSONデコードしてモデルにパース
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return YouTubeSearchResponse.fromJson(jsonResponse);
      } else {
        // エラーハンドリング
        throw Exception('YouTube API の呼び出しに失敗しました: ${response.statusCode}');
      }
    } catch (e) {
      developer.log('API呼び出しエラー', error: e);
      rethrow;
    }
  }
}

// 使用例のサービスクラス
class YouTubeVideoService {
  final YouTubeApiClient _apiClient = YouTubeApiClient();

  Future<List<YouTubeSearchItem>> getChannelVideos(String channelId) async {
    try {
      final response = await _apiClient.fetchVideos(channelId: channelId);
      return response.items;
    } catch (e) {
      developer.log('ビデオ取得エラー', error: e);
      return [];
    }
  }
}
