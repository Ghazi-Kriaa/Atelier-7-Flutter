import 'package:flutter/material.dart';
import '../Widgets/Myform.dart';
class Subscribe extends StatelessWidget {
 const Subscribe({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 elevation: 15,
 backgroundColor: Colors.deepOrange[500],
 title: const Text("Subscribe"),
 leading: IconButton(
 onPressed: () {},
 icon: const Icon(Icons.home),
 ),
 ),
 body: const Myform(),
 );
 }
}