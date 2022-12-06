import 'package:flutter/material.dart';
import '../Widgets/MenuBody.dart'; 
class Menu extends StatelessWidget {
 const Menu({Key? key}) : super(key: key);
@override
Widget build(BuildContext context){
return Scaffold(
 appBar: AppBar(
 elevation: 15,
 backgroundColor: Colors.deepOrange[500],
 title:const Text("Gestion de commerce"),
 leading: IconButton(
 onPressed: () {},
 icon: const Icon(Icons.home),
 ),
 actions: [
 IconButton(
 onPressed: () {},
 icon: const Icon(Icons.call),
 ),
 IconButton(
 onPressed: () {},
 icon: const Icon(Icons.more_vert),
 ),
 ],
 ), 
 body: const MenuBody(), 
 );
}
} 
