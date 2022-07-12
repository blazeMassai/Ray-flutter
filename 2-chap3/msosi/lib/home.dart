import 'package:flutter/material.dart';

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
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue)
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
            icon: Icon(Icons.card_giftcard),
            label: 'Card'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3'
          ),
        ]
      ),
    );
  }
}