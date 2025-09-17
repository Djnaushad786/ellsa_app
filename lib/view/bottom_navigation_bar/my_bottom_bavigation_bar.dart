import 'package:flutter/material.dart';
import 'home_screen/home_screen.dart';

class MyBottomNavigationBarExample extends StatefulWidget {
  const MyBottomNavigationBarExample({super.key});

  @override
  State<MyBottomNavigationBarExample> createState() =>
      _MyBottomNavigationBarExampleState();
}

class _MyBottomNavigationBarExampleState
    extends State<MyBottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    Center(child: Text('Rewards', style: TextStyle(fontSize: 24))),
    Center(child: Text('My Order', style: TextStyle(fontSize: 24))),
    Center(child: Text('Bookings', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_rounded),
                label: 'Rewards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'My Order',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'My Order',
              ),

            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            ),
        );
    }
}
