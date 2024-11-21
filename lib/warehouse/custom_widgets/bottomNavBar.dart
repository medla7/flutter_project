import 'package:auth/warehouse/home%20screen/presentation/pages/home_screen.dart';
import 'package:auth/warehouse/notification/notification_screen.dart';
import 'package:auth/warehouse/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // List of pages to navigate to
  static final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const TransactionScreen(),
    const NotificationScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        // Display the selected page
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.change_circle), label: 'transaction'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "stock",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped, // Trigger function when an item is tapped
      ),
    );
  }
}
