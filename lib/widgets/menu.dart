import 'package:flutter/material.dart';
import 'package:timeline/display_pages.dart';

/// メニューバー
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  /// 現在選択中の index
  int _currentIndex = 0;

  /// タップしたボタンの画面に切り替える
  void _onItemTapped(int index) {
    _currentIndex = index;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = displayPages
        .map((page) => BottomNavigationBarItem(
              icon: const Icon(Icons.adjust),
              label: page.toString(),
            ))
        .toList();
    return Scaffold(
      body: SafeArea(child: displayPages[_currentIndex]),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Theme.of(context).primaryColor),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: items,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}
