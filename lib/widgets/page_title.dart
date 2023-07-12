import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child:  Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical:30),
           child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Aplicacion Multiple Icons Study',style: TextStyle(color: Colors.white, fontSize:30,fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
               Text('This transacion category aplication study the programacion',style: TextStyle(color: Colors.white, fontSize:20,fontWeight: FontWeight.w400,letterSpacing: 0.4),),
            ],
        ),
      ),
    );
  }
}