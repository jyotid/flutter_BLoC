import 'package:flutter_BLoC/uses_info_screen.dart';
import 'package:flutter/material.dart';

import 'bloc/auth_bloc.dart';
import 'login_screen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthBLoC bloc =  AuthBLoC();
    return AuthBLoCProvider(
      bloc: bloc,
      child: getScreen(bloc)
    );
  }

  Widget getScreen(AuthBLoC authBLoC){
    if(!authBLoC.getToken().isEmpty){
      return LoginScreen();
    }else{
      return UserInfoScreen();
    }
  }

}
