import 'package:flutter_BLoC/uses_info_screen.dart';
import 'package:flutter/material.dart';

import 'bloc/auth_bloc.dart';
import 'login_screen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: AuthBLoCProvider
            .get(context)
            .authTokenStream,
        builder: (context, snapshot) {
          final location = snapshot.data;
          if (location == null || location.isEmpty) {
            return LoginScreen();
          }

          return UserInfoScreen();
        }
    );
  }
  }
