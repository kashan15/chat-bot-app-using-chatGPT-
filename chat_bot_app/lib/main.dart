
import 'package:chat_bot_app/app/locator.dart';
import 'package:chat_bot_app/utils/size_config.dart';
import 'package:chat_bot_app/views/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  await configure();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),

      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return ChatScreen();
          },
        );
      },
    );
  }
}
