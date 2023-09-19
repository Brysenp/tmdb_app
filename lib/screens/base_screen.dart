import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_flix/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  int _bottomIndex = 0;

  final screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container()
  ];

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
          currentIndex: _bottomIndex,
          onTap: (index){
            setState(() {
              _bottomIndex = index;
            });
          },
        ),
      ),
      body: Center(
        child: screens[_bottomIndex],
      ),
    );
  }
}
