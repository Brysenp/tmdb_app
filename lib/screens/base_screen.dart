import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad_rounded), label: 'Games'),
            BottomNavigationBarItem(icon: Icon(Icons.local_play_rounded), label: 'New & Hot'),
            BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_rounded), label: 'Downloads'),
          ],
          iconSize: 30,
          currentIndex: _calculateSelectedIndex(context),
          onTap: (index) => _onBottomNavTap(index, context),
        ),
      ),
      body: child
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/game')) {
      return 1;
    }
    if (location.startsWith('/new_hot')) {
      return 2;
    }
    if (location.startsWith('/download')) {
      return 3;
    }
    return 0;
  }

  void _onBottomNavTap(int index, BuildContext context){
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home');
        break;
      case 1:
        GoRouter.of(context).go('/game');
        break;
      case 2:
        GoRouter.of(context).go('/new_hot');
        break;
      case 3:
        GoRouter.of(context).go('/download');
        break;
    }
  }

}
