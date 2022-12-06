import 'package:flutter/material.dart';
import '../Screens/Details.dart';
import '../model/Article.dart'; 
class Articles extends StatefulWidget {
 const Articles({Key? key}) : super(key: key);
 @override
 _ArticlesState createState() => _ArticlesState();
}
class _ArticlesState extends State<Articles> {
 @override
 Widget build(BuildContext context) {
 var getArticleData = <Article>[
 Article(1, 'NOKIA-C1', 99, "99 %",
 "https://www.ooredoo.tn/Personal/2267-large_default/portable-nokia-c1-2nd-ed.jpg"),
 Article(2, 'BENCO-Y30', 85, "87 %",
 "https://www.tunisianet.com.tn/250121-large/smartphone-benco-y30-1-go-16-go-double-sim-vert.jpg"),
 Article(3, 'ITEL-P38', 89, "89 %",
 "https://tunisiatech.tn/8033-large_default/smartphone-itel-p38.jpg"),
 Article(4, 'SPARKGO22', 75, "80 %",
 "https://selectshop.tn/23520-large_default/smartphone-tecno-spark-go-2022-2go-32go-bleu.jpg"),
 Article(5, 'POP2F', 70, "65 %",
 "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"),
 ];
 return Scaffold(
 body: CustomScrollView(
 slivers: [
 const SliverAppBar(
 backgroundColor: Color.fromARGB(255, 32, 13, 139),
 title: Text('Articles'),
 expandedHeight: 20,
 collapsedHeight: 80,
 ),
 const SliverAppBar(
 backgroundColor: Colors.green,
 title: Text('Liste des articles'),

 floating: true,
 ),
 _getSlivers(getArticleData, context),
 ],
 ),
 );
 }
 SliverList _getSlivers(List myList, BuildContext context) {
 return SliverList(
 delegate: SliverChildBuilderDelegate(
 (BuildContext context, int index) {
 return buildRow(myList[index]);
 },
 childCount: myList.length,
 ),
 );
 }
 buildRow(Article myList) {
 return Card(
 margin: const EdgeInsets.all(15),
 color: Colors.green[100],
 shadowColor: Colors.blueGrey,
 elevation: 20,
 child: Container(
 color: const Color.fromARGB(255, 197, 236, 191),
 height: 80,
 alignment: Alignment.center,
 child: Column(
 mainAxisSize: MainAxisSize.min,
 children: [
 ListTile(
 onTap: () {
 Navigator.of(context).pushNamed("/details",arguments: myList);
 },
 leading: Hero(
 tag:myList.usn,
 transitionOnUserGestures: true,
 child: Image.network(myList.image, fit: BoxFit.cover)),
 title: Text(
 myList.designation,
 style: const TextStyle(fontSize: 20),
 ),
 subtitle: Text(myList.pourcentage),
 ), 
 ],
 ),
 ),
 );
 }
}
