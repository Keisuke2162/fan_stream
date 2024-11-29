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
