
import 'dart:async';

import 'package:flutter/cupertino.dart';

class AuthBLoC {
  String authToken ="";
  // ignore: close_sinks
  final _authTokenController = StreamController<String>();

  Stream<String> get authTokenStream => _authTokenController.stream;

  String getToken() => authToken;

  void setToken(String token){
    this.authToken = token;
    _authTokenController.sink.add(token);
  }

  void dispose(){
  }
}
class AuthBLoCProvider extends StatefulWidget{
  final Widget child;
  final AuthBLoC bloc;

  const AuthBLoCProvider({Key key, this.child, this.bloc}) : super(key: key);

  static AuthBLoC get(BuildContext context) {
    final AuthBLoCProvider provider = context.findAncestorWidgetOfExactType<AuthBLoCProvider>();
    return provider.bloc;
  }

  @override
  State<StatefulWidget> createState() => _AuthBLoCState();

}
class _AuthBLoCState extends State<AuthBLoCProvider>{
  @override
  Widget build(BuildContext context) => widget.child;
}
