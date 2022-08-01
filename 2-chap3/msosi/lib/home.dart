import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget{

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Before you can let the user switch between tab bar items, you need to know which
  // index they selected. hence the below code

  //_selectedIndex keeps track of which tab is currently selected. The underscore
  // in _selectedIndex signifies it’s private. The selected index is the state being
  // tracked by _HomeState.

  int _selectedIndex = 0;

  static List<Widget> pages = <Widget> [
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Mazagazaga',
              style: Theme.of(context).textTheme.headline6
          ),
          // backgroundColor:  mainColor,

        ),
        body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,

        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),//card1
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),//card2
            label: 'About'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),//card3
            label: 'Recipes'
          ),
        ]
      ),
    );
  }
}