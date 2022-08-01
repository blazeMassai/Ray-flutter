import 'package:flutter/material.dart';
import 'msosi_theme.dart';


class Card1 extends StatelessWidget{
  const Card1({Key? key}) : super(key:key);

  final String category = "Editor's choice";
  final String title = "The Art of Dough";
  final String description = "Jifunze kutengeneza mkate maradufu";
  final String chef = "Chef Ree";

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),//hapa ume-apply padding ya 16 on all sides ya box using flutter units ambazo nikama logical pixels
        constraints: const BoxConstraints.expand(width: 345, height: 450),

        //boxdecoration below inadecsribe jinsi ya kuchora box
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

        child: Stack(
          children: [
            Text(category, style: MsosiTheme.darkTextTheme.bodyText1),
            Positioned(
              top:20,
              child: Text(title, style: MsosiTheme.darkTextTheme.headline5)
            ),

            Positioned(
              top: 50,
              right: 0,
              left: 0,
              child: Text(description, style: MsosiTheme.darkTextTheme.bodyText1),
            ),

            Positioned(
              right: 0,
              bottom: 10,
              child: Text(chef, style: MsosiTheme.darkTextTheme.bodyText1),
            ),

          ],
        ),
      ),
    );
  }

}