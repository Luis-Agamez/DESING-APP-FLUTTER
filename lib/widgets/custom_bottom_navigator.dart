import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_outlined), label: 'Grafic'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined), label: 'User')
        ]);
  }
}
