import 'package:flutter/material.dart';

class CustomButtomNavigation extends StatelessWidget {
   
  const CustomButtomNavigation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendar',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart_outlined),
          label: 'Stacked',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'User',
          ),
      ]);
    
  }
}