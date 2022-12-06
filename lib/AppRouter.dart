import 'package:flutter/material.dart';
import 'Screens/Details.dart';
import 'Screens/Menu.dart';
import 'Screens/Articles.dart';
import 'Screens/Subscribe.dart'; 
import 'model/Article.dart';
class AppRouter {
 static Route<dynamic> generateRoute(RouteSettings settings) {
 switch (settings.name) {
 case "/items":
 return MaterialPageRoute(builder: (_) => const Menu());
 case "/articles":
 return MaterialPageRoute(builder: (_) => const Articles());
 case "/details":
 final article = settings.arguments as Article;
 return MaterialPageRoute(builder: (_) => Details(myList : article, ));
 case "/subscribe":
 return MaterialPageRoute(builder: (_) => const Subscribe()); 
 default:
 return MaterialPageRoute(
 builder: (_) => const Scaffold(
 body: Center(
 child: Text('No route defined'),
 ),
 ),
 );
 }
 }
}