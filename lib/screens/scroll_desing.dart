import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const linearGradient = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 0.5],
        colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]);
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(gradient: linearGradient),
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [Page1(), Page2()],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text('11º', style: textStyle),
            const Text('Miercoles', style: textStyle),
            Expanded(child: Container()),
            const Icon(Icons.keyboard_arrow_down,
                size: 100, color: Colors.white)
          ]),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text('Welcome!',
              style: TextStyle(color: Colors.white, fontSize: 22)),
        ),
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff0098FA),
        ),
      )),
    );
  }
}
