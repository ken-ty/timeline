import 'package:flutter/material.dart';
import 'package:timeline/my_home_page.dart';
import 'package:timeline/my_home_page2.dart';

/// メニュー
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _pages = [
    const MyHomePage(title: 'ホームページ1'),
    const MyHomePage2(title: 'ホームページ2'),
  ];

  int _pageIndex = 0;

  void _onItemTapped(int index) {
    _pageIndex = index;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム2'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
