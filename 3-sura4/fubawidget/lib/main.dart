import 'package:flutter/material.dart';
import 'msosi_theme.dart';
import 'home.dart';

void main() {
  runApp(const Msosi());
}
class Msosi extends StatelessWidget{

  const Msosi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = MsosiTheme.dark();
    //0xff ni ku-initialize hex-colors
    Color mainColor = const Color(0xffbf40bf);
    // TODO: implement build
    return MaterialApp(
      theme: theme,
      title: 'Mazaga',
      home: const Home(),
    );
  }

}