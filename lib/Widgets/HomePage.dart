import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
 margin: const EdgeInsets.all(20),
 padding: const EdgeInsets.all(2),
 width: 900,
 height: 600,
 color: Colors.grey[200],
 child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
 children: [
 Image.network("https://blog.surf-prevention.com/wp-content/uploads/2012/06/plage-paradisiaque.jpg"),
 const Text(
 "Change Starts Here",
 style: TextStyle(
 color: Color.fromARGB(255, 232, 102, 55),
 fontSize: 40,
 ),
 ),
 //const SizedBox(height: 20), 

 const Text(
 "Today's little moments",
 style: TextStyle(
 color: Color.fromARGB(255, 233, 33, 33),
 fontSize: 15,
 ),
 ),
 //const SizedBox(height: 20), 

 const Text(
 "become tomorrow's precious memories",
 style: TextStyle(
 color: Color.fromARGB(255, 233, 33, 33),
 fontSize: 20,
 ),
 ),
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 const Icon(Icons.facebook, size: 54, color: Colors.blue),
 ElevatedButton(
 onPressed: () {},
 child: const Text('Share Facebook'),
 ),

 ],
 ), 
 ],
 ),
 );
    
  }
}