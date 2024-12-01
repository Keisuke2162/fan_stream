import 'package:fan_stream/custom/custom_appbar.dart';
import 'package:fan_stream/custom/custom_toolbar_shape.dart';
import 'package:fan_stream/views/movie_grid_view.dart';
import 'package:fan_stream/views/streamer_grid_view.dart';
import 'package:flutter/material.dart';

// サンプルページ（とりあえず表示だけ作りたい場合に仮置きする用のページ）
class SamplePage extends StatelessWidget {
  final String name;

  const SamplePage(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name, style: const TextStyle(fontSize: 32)),
      ),
    );
  }
}

class BottomTabView extends StatefulWidget {
  const BottomTabView({super.key});

  @override
  State<BottomTabView> createState() => _BottomTabViewState();
}

class _BottomTabViewState extends State<BottomTabView> {
  int _currentIndex = 0;
  final _pages = [const StreamerGridView(), const YoutubeMovieGridView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Streams'),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 144,
              child: const CustomPaint(
                  painter: CustomToolbarShape(lineColor: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0);
    path.lineTo(size.width, 0);

    path.quadraticBezierTo(
      size.width / 2, size.height * 2, // 山の頂点
      0, size.height, // 終点は下部の左側
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
