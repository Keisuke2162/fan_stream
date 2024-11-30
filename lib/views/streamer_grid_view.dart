import 'package:fan_stream/data/grouped_streamers.dart';
import 'package:fan_stream/data/streamers.dart';
import 'package:flutter/material.dart';

// Statelessでいい気がするけど一様Statefulで作る
class StreamerGridView extends StatefulWidget {
  const StreamerGridView({super.key});

  @override
  State<StreamerGridView> createState() => _StreamerGridViewState();
}

class _StreamerGridViewState extends State<StreamerGridView> {
  List<int> mockFavoriteStreamerIds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: CustomScrollView(
            slivers: [
              ...groupedStreamers(mockStreamers).entries.expand((entry) {
                return [
                  SliverPadding(
                    padding: const EdgeInsets.only(top: 32, left: 16),
                    sliver: SliverToBoxAdapter(
                      child: Text(entry.key.name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        crossAxisCount: 3,
                      ),
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        final streamer = entry.value[index];
                        final isFavorite =
                            mockFavoriteStreamerIds.contains(streamer.id);

                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (mockFavoriteStreamerIds
                                            .contains(streamer.id)) {
                                          mockFavoriteStreamerIds
                                              .remove(streamer.id);
                                        } else {
                                          mockFavoriteStreamerIds
                                              .add(streamer.id);
                                        }
                                      });
                                    },
                                    child: Container(
                                      width: 88,
                                      height: 88,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(streamer.colorCode),
                                              width: 4)),
                                      child: ClipOval(
                                        child: Image.network(
                                            streamer.thumbnailUrl),
                                      ),
                                    ),
                                  ),

                                  // お気に入りアイコン
                                  if (isFavorite)
                                    Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                              color: Color(streamer.colorCode),
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        )),
                                ],
                              ),
                            ),
                            Text(
                              streamer.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      }, childCount: entry.value.length))
                ];
              }),
            ],
          ),
        ),
      ),
    );
  }
}
