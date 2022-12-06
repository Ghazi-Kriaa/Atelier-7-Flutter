import 'package:flutter/material.dart';
import '../model/Article.dart';
class Details extends StatelessWidget {
 final Article myList;
 const Details({
 Key? key,
 required this.myList,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text(myList.designation),
 backgroundColor: const Color.fromARGB(255, 55, 147, 15),
 ),
 body: Stack(
 children: [
 Container(
 width: double.infinity,
 height: double.infinity,
 color: Colors.green,
 margin: const EdgeInsets.all(20),
 child: Hero(
 tag: myList.usn,
 transitionOnUserGestures: true,
 child: Image.network(myList.image, fit: BoxFit.cover),
 ),
 ),
 Positioned(
 top: 555,
 left: 40,
 child : Container(
 width: 220,
 height: 50,
 color: Colors.white,
 child: Text("Pourcentage : ${myList.pourcentage}",style: const
TextStyle(fontSize: 24)),
 ),
 ),
 Positioned(
 top: 555,
 left: 280,
 child : Container(
 width: 100,
 height: 50,
 color: Colors.white,
 child: Text("Note : ${myList.notes.toString()}",style: const
TextStyle(fontSize: 24),),
 ),

 ),
 ],
 ),
 );
 }
}