import 'package:flutter_BLoC/bloc/auth_bloc.dart';
import 'package:flutter_BLoC/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AuthBLoCProvider(
      bloc: AuthBLoC(),
      child: MaterialApp(
        title: 'Restaurant Finder',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SplashScreen(),
      )
    );
  }

}
