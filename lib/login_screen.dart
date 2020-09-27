import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_BLoC/bloc/auth_bloc.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(color: Color(0xFFFF9000), child: FlatButton(
        onPressed: (){
          AuthBLoCProvider.get(context).setToken("token");
        },
      ),),
    );
  }

}
