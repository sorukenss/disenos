import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
   
  const CardTable({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
        TableRow(
          children: [
              _SingleCard(icon: Icons.notifications_active_outlined,color: Colors.blue,text: 'Notification'),
              _SingleCard(icon: Icons.timer,color: Colors.indigo,text: 'Time'),
          ]
        ),
        TableRow(
          children: [
              _SingleCard(icon: Icons.apple_outlined,color: Colors.white,text: 'Apple'),
              _SingleCard(icon: Icons.email_outlined,color: Colors.amber,text: 'Email'),
          ]
        ),
        TableRow(
          children: [
              _SingleCard(icon: Icons.account_circle_outlined,color: Colors.brown,text: 'User'),
              _SingleCard(icon: Icons.call,color: Colors.green,text: 'Phone'),
          ]
        ),
        TableRow(
          children: [
              _SingleCard(icon: Icons.music_note_outlined,color: Colors.pink,text: 'Notification'),
              _SingleCard(icon: Icons.video_call_outlined,color: Colors.red,text: 'Time'),
          ]
        ),
        TableRow(
          children: [
              _SingleCard(icon: Icons.notifications_active_outlined,color: Colors.blue,text: 'Notification'),
              _SingleCard(icon: Icons.timer,color: Colors.indigo,text: 'Time'),
          ]
        ),
        
      ],
    );
   
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({super.key, 
  required this.icon, 
  required this.color, 
  required this.text});
  
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
      CircleAvatar( 
         backgroundColor: color,
        child: Icon(icon,size: 30, color: Colors.white),
          radius: 30,
     ),
      const SizedBox(height: 20,),
      Text(text, style: TextStyle(color: color,fontSize: 20),)
    ]),
      );
  }
}


class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    super.key, 
  required this.child
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY:5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
        
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}