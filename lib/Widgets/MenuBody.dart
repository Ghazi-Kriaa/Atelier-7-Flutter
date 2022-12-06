import 'package:flutter/material.dart';
import '../Widgets/CardsMenu.dart'; 
class MenuBody extends StatelessWidget {
 const MenuBody({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return GridView.count(
 primary: false,
 padding: const EdgeInsets.all(20),
 crossAxisSpacing: 10,
 mainAxisSpacing: 10,
 crossAxisCount: 2,
 children: <Widget>[
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[100],
child: const CardsMenu(letexte:"Articles",licone:Icons.feed_rounded,cible:"/articles"), 
 ),
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[200],
 child: const Text('Documents'),
 ),
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[300],
 child: const Text('Clients'),
 ),
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[400],
 child: const Text('Réceptions'),
 ),
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[500],
 child: const Text('Ordonnancement'),
 ),
 Container(
 padding: const EdgeInsets.all(8),
 color: Colors.orange[600],
 child: const Text('Statistiques'),
 ),
 ],
);
 }
}