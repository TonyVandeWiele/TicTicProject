import 'package:demotest/screens/register_screen.dart';
import 'package:demotest/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';


Map<String,WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};