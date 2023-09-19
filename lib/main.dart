import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/screens/base_screen.dart';
import 'package:net_flix/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff121212),
            selectedItemColor: Color(0xffffffff),
            unselectedItemColor: Color(0xff757575),
          ),
          colorScheme: ColorScheme.fromSwatch(backgroundColor: const Color(0xff121212),),
          fontFamily: 'NetflixSans',
          textTheme: textTheme(context),
          dividerColor: Colors.transparent,
        ),
        home: const BaseScreen(),
      ),
    );
  }
}
