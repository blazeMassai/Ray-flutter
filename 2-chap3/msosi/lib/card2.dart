import 'package:flutter/material.dart';
import 'author_card.dart';
import 'msosi_theme.dart';

class Card2 extends StatelessWidget{

  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: const EdgeInsets.all(16),//hapa ume-apply padding ya 16 on all sides ya box using flutter units ambazo nikama logical pixels
          constraints: const BoxConstraints.expand(width: 345,
              height: 450),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),

            child: Column(
            children: [
                const AuthorCard(
                    authorName: 'Ree Molls',
                    title: 'Beef Connoisseur',
                    imageProvider: AssetImage('assets/mr-chapo.jpg')),

              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        'Madiko',
                        style: MsosiTheme.lightTextTheme.headline3,
                      )
                    ),
                    Positioned(
                      bottom: 70,
                      left: 16,
                      child:RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Vitu Murua!',
                          style: MsosiTheme.lightTextTheme.headline3,
                        ),
                      )
                    ),
                  ]
                )
              ),
            ],
        ),
        ),

    );
  }
}