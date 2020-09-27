import 'package:flutter/cupertino.dart';

class AuthBLoC {
  String authToken ="RKEJG";

  String getToken() => authToken;

  void dispose(){
  }
}
class AuthBLoCProvider extends StatefulWidget{
  final Widget child;
  final AuthBLoC bloc;

  const AuthBLoCProvider({Key key, this.child, this.bloc}) : super(key: key);

  AuthBLoC get() => bloc;

  @override
  State<StatefulWidget> createState() => _AuthBLoCState();

}
class _AuthBLoCState extends State<AuthBLoCProvider>{
  @override
  Widget build(BuildContext context) => widget.child;
}
