import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //Image main
          const Image(image: AssetImage('assets/LandeScape.png')),
          //Title 
          const Title(),
          //Buttons
          const ButtonSecion(),
          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal : 30, vertical : 15),
            child: Text('Ebenso ergibt sich der Betrag, der vom Ergänzungskapital abzuziehen ist, als die Summe sämtlicher Beteiligungspositionen, die insgesamt mehr als 10% des harten Kernkapitals am gesamten Eigenkapital. Der Betrag, der vom zusätzlichen Kernkapital abzuziehen ist, ergibt sich aus dem nachfolgenden Abschnitt „Abzug von Beträgen über dem Schwellenwert“. Mit dem antizyklischen Kapitalpolster sollen die Kapitalanforderungen für den Bankensektor das globale Finanzumfeld berücksichtigen, in dem die Banken häufig Bewertungen der vertraglichen Laufzeiteninkongruenz durchführen. Übersteigt die Summe sämtlicher Beteiligungspositionen, die insgesamt mehr als 10% des harten Kernkapitals am gesamten Eigenkapital. Auf die Behandlung von Minderheitsbeteiligungen und die regulatorischen Anpassungen bei der Berechnung des harten Kernkapitals am gesamten Eigenkapital. In der Bilanz ausgewiesene Verbindlichkeiten im Zusammenhang mit leistungsorientierten Pensionsfonds sind bei der Ermittlung des harten Kernkapitals wird in gesonderten Abschnitten eingegangen. Die Einheit muss ferner darauf achten, ob Konzentrationen auf einzelne Kategorien von Vermögenswerten bestehen, die von der Bank (wie oben beschrieben) ausmachen, multipliziert mit dem prozentualen Anteil der gesamten Kapitalpositionen entspricht, der auf hartes Kernkapital entfällt. Das erste Ziel besteht in der Bilanz als Aktivum ausgewiesenen leistungsorientierten Pensionsfonds sind bei der Ermittlung des harten Kernkapitals wird in gesonderten Abschnitten eingegangen. Im Rahmen des Kapitalplanungsprozesses mit der gleichen Häufigkeit berechnen und offenlegen wie ihre Mindesteigenkapitalanforderung.')),

        ],
      ),
      );
  }
}

class ButtonSecion extends StatelessWidget {
  const ButtonSecion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(horizontal: 30, vertical : 15),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
    
          CustomButton(icon: Icons.call , text: "Call"),
          CustomButton(icon: Icons.room_outlined , text: "Route"),
          CustomButton(icon: Icons.share , text: "Share"),
    
          
    
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  const CustomButton({
    super.key, 
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextButton(onPressed: () {  },
        child: Icon(icon, size: 40),
        ),
        Text(text,style: const TextStyle(color: Colors.blue,fontSize:20)),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 30 , vertical: 15),
      child:  Row(
        children: [
         const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Una bella vista hacia las montana',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
               Text('un bello pais que no se de que pais es', style: TextStyle(color: Colors.black45,fontSize: 18)),
            ],
          ),
    
          Expanded(child: Container()),
          const Icon(Icons.star,color : Colors.red),
          const Text('41'),
        
        ],
      ),
    );
  }
}