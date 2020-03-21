import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Contaier'),
      ),
      body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.bounceOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
      )),
      floatingActionButton: FloatingActionButton(
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset('assets/PersonalLogo.png'),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 4.0)
              ]),
        ),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _color = Colors.lime;
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1
        );
      
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
