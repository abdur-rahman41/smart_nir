import 'package:flutter/material.dart';
import 'package:smart_nir/ui/screens/dash_board.dart';
import 'package:smart_nir/ui/screens/features.dart';
import 'package:smart_nir/ui/screens/financials.dart';
import 'package:smart_nir/ui/screens/tenants.dart';


class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget> _screens =  [
    DashBoard(),
   Tenants(),
    Financials(),
    Features()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [

            Expanded(child: _screens[_selectedScreen]),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },

        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index) {
          _selectedScreen = index;
          setState(() {});
        },
        elevation: 4,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Tenants'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Financials'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: 'Features'),
        ],
      ),
    );
  }
}
