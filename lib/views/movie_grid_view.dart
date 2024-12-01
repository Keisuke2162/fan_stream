import 'package:fan_stream/data/movie_list_api_client.dart';
import 'package:fan_stream/entities/streamer/video.dart';
import 'package:flutter/material.dart';

class YoutubeMovieGridView extends StatefulWidget {
  const YoutubeMovieGridView({super.key});

  @override
  State<YoutubeMovieGridView> createState() => _YoutubeMovieGridViewState();
}

class _YoutubeMovieGridViewState extends State<YoutubeMovieGridView> {
  List<YouTubeSearchItem> _videos = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchVideos();
  }

  Future<void> _fetchVideos() async {
    try {
      final apiClient = YouTubeApiClient();
      // channelIdは一旦固定値
      final response =
          await apiClient.fetchVideos(channelId: 'UCQ0UDLQCjY0rmuxCDE38FGg');

      setState(() {
        _videos = response.items;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      // エラーハンドリング
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('動画の取得に失敗しました')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 16 / 9,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: _videos.length,
              itemBuilder: (context, index) {
                final video = _videos[index];
                final thumbnailUrl = video.snippet.thumbnails.medium?.url;

                return thumbnailUrl != null
                    ? Image.network(
                        thumbnailUrl,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      )
                    : const Icon(Icons.no_photography);
              },
            ),
    );
  }
}
