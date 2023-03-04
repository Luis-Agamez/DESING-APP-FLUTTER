import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        const Title(),
        //Buttons
        const Buttons(),

        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
              'Cillum elit commodo anim dolor ut et elit aliqua ad ex nulla ut ea ut. Consequat irure culpa ullamco labore do mollit. Ut mollit eu Lorem commodo ad deserunt tempor. Nostrud id consectetur ad eiusmod exercitation in eiusmod proident consectetur aliqua excepteur in labore ad. Eu fugiat enim et nulla adipisicing anim aliqua cupidatat. Minim eu ex elit consequat consequat ex. Velit proident eu mollit est reprehenderit deserunt qui esse labore laboris.'),
        )
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Welcome The Paradise ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kanderlan, Swizerland',
                style: TextStyle(color: Colors.black45))
          ],
        ),
        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ]),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            CustomButton(icon: Icons.call, text: 'Call'),
            CustomButton(icon: Icons.map_sharp, text: 'Route'),
            CustomButton(icon: Icons.share, text: 'Share'),
          ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(text, style: const TextStyle(color: Colors.blue)),
    ]);
  }
}
