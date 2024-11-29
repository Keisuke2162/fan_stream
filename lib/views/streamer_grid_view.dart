import 'package:fan_stream/entities/streamer/streamer.dart';
import 'package:flutter/material.dart';
// Statelessでいい気がするけど一様Statefulで作る

class StreamerGridView extends StatefulWidget {
  const StreamerGridView({Key? key}) : super(key: key);

  @override
  State<StreamerGridView> createState() => _StreamerGridViewState();
}

class _StreamerGridViewState extends State<StreamerGridView> {
  final List<Streamer> _streamers = [
    Streamer(
        id: 0,
        name: "藍沢エマ",
        thumbnailUrl:
            "https://yt3.ggpht.com/oIps6UVvqtpJykcdjYYyRvhdcyVoR1wAdH8CnTp4msMaKYdn8XMLj4FHsLoqfWaJzbLJKSPjCg=s88-c-k-c0x00ffffff-no-rj")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: _streamers.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(_streamers[index].thumbnailUrl);
        },
      ),
    );
  }
}

/*

class BottomTabView extends StatefulWidget {
  const BottomTabView({Key? key}) : super(key: key);

  @override
  State<BottomTabView> createState() => _BottomTabViewState();
}

class _BottomTabViewState extends State<BottomTabView> {
  int _currentIndex = 0;
  final _pages = [const SamplePage('home'), const SamplePage('media')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('home'),
        ),
        body: _pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Streams'),
            ],
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            }));
  }
}

*/