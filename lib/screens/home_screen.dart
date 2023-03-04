import 'package:desing_app/screens/page_title.dart';
import 'package:desing_app/widgets/backkground.dart';
import 'package:desing_app/widgets/card_table.dart';
import 'package:desing_app/widgets/custom_bottom_navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [Background(), _HomeBody()],
      )),
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titles
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}
