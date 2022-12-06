import 'package:flutter/material.dart';
import '../AppRouter.dart';
import '../Screens/Articles.dart'; 

class CardsMenu extends StatelessWidget {
 const CardsMenu({Key? key, this.letexte, this.licone, this.cible}) : super(key: key);
 final licone;
 final letexte;
 final cible; 
 @override
 Widget build(BuildContext context) {
 return Card(
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(15.0),
 ),
 color: const Color.fromARGB(236, 255, 255, 255),
 elevation: 10,
 child: InkWell (
 onTap: (){Navigator.of(context).pushNamed(cible); 
},
 splashColor: Colors.red, 
   child: Column(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
   children: [
   Icon(
    licone, 
   color: const Color.fromARGB(255, 236, 119, 30), 
   size: 90.0,
   ),
 Text(letexte, 
 style: const TextStyle(fontSize: 25.0, ), 
   ),
   ],
   ),
 ),
 );
 }
}