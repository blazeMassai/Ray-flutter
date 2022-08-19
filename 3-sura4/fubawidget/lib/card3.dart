import 'package:flutter/material.dart';
import 'msosi_theme.dart';

class Card3 extends StatelessWidget{
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 345, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/mag2.png'),
          fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),//hapa tunaweka pazi ya juu kabla ya maandishi
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
              ),

            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text(
                    'Habari ya mjini',
                    style: MsosiTheme.darkTextTheme.headline4
                  ),
                  const SizedBox(height: 30)
                ]
              ),
            ),

            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,

                children: [
                  Chip(
                    label: Text('Healthy',
                    style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Vegan',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Carrots',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Ndizi',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Sato',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Sangara',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Kibua',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Lemongrass',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),

                  Chip(
                    label: Text('Juice ya Parachichi',
                        style: MsosiTheme.darkTextTheme.bodyText1
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                ]
              )
            ),
          ]
        ),
      ),
    );
  }
}