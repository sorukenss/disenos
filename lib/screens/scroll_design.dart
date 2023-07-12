import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
   
  const ScrollDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BDA6),
          ]

          )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children:const  [
              Page1(),
              Page2(),
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //backgroung image
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 30,),
           const Text('11°',style: textStyle,),
           const Text('Jueves',style: textStyle),
    
           Expanded(child: Container()),
    
           const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
    
          
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: double.infinity,
      alignment: Alignment.topCenter,
      color: Color(0xff30BAD6),
      child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){ },
         child:  Padding(
           padding: const EdgeInsets.symmetric(horizontal: 40),
           child: Text('Welcome', style: TextStyle(color: Colors.white, fontSize:40)),
         ),
         style: TextButton.styleFrom(
          backgroundColor: Color(0xff0098FA),
          shape: StadiumBorder(),
         ),
      ),
      ),
    );
  }
}