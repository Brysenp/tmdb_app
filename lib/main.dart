import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/router.dart';
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
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: goRouter,
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
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                    )
                ),
            )
          )
        ),
      ),
    );
  }
}
