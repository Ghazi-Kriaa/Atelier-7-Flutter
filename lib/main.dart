import 'package:flutter/material.dart';
import '../Widgets/HomePage.dart';
import '../Widgets/MyDrawer.dart';
import 'AppRouter.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
 onGenerateRoute: AppRouter.generateRoute, 

      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Flutter'),
        backgroundColor: Colors.orange[700],
      ),
      body: const HomePage(),
      drawer: const MyDrawer(),
    );
  }
}
