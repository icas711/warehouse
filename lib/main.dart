import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc_observable.dart';

import 'package:warehouse/ui/pages/home_page.dart';

void main() async {
  BlocOverrides.runZoned(() => runApp(MyApp()),
    blocObserver: WarehouseBlocObservable(),
  );

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warehouse',

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          displaySmall: TextStyle(fontSize: 24.0, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
          bodyLarge: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w200, color: Colors.black),
          bodySmall: TextStyle(
              fontSize: 11.0, fontWeight: FontWeight.w100, color: Colors.black),
        ),
      ),

      home: HomePage(title: 'Warehouse'),
    );
  }
}
class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}

