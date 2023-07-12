import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
    final boxDecoration =  BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2 , 0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333),
        ])
      );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //BackgroundFontOscuro 
        Container(decoration: boxDecoration,),
          //pinkBox
          Positioned(
            top: -100,
            left: -35,
            child: _PinkBox()),
        
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
    
          ])
        ),
    
      ),
    );
  }
}