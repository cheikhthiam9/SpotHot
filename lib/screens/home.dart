import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'maps.dart';
import 'profile.dart';
import 'search.dart';

class Home extends StatefulWidget {
  static const id = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _auth = auth.FirebaseAuth.instance;

  final List<Widget> _widgetOptions = [
    MapsPage(),
    ListPropertyCards(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('SpotHot'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
