import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_balance_outlined,
              text: 'General'),
          _SingleCard(color: Colors.pink, icon: Icons.adb, text: 'Problems'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purple,
              icon: Icons.add_location_alt,
              text: 'adress'),
          _SingleCard(
              color: Colors.deepOrangeAccent,
              icon: Icons.add_business_rounded,
              text: 'Shoping'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.indigo, icon: Icons.ac_unit, text: 'Saving'),
          _SingleCard(
              color: Colors.green, icon: Icons.add_circle, text: 'Add Dinner'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 40, color: Colors.white),
            radius: 30),
        const SizedBox(height: 15),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 20))
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
