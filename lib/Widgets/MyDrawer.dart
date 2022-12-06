import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Ghazi kriaa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
            accountEmail: Text('kriaaghazi73@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ghazi.jpg'),
            ),
           decoration: BoxDecoration(color: Color.fromARGB(255, 202, 57, 57)),
 ),
 ListTile(
 leading:
const Icon(Icons.person, color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 202, 57, 57),
 title: const Text('Profile'),
 onTap: () {
 print('Profile');
  },
 ),
 ListTile(
 leading: const Icon(Icons.directions,
 color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 45, 43, 43),
 title: const Text('Subscribe'),

 onTap: () {
 Navigator.of(context).pushNamed("/subscribe");
 }, 
 
 ),
 ListTile(
 leading: const Icon(Icons.format_list_bulleted_outlined,
 color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 45, 43, 43),
 title: const Text('Items'),
 onTap: () {
 Navigator.of(context).pushNamed("/items"); 
 },

 ),
 ListTile(
 leading: const Icon(Icons.email_rounded,
 color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 45, 43, 43),
 title: const Text('Contact'),
 onTap: () {
 print('Contact');
 },
 ),
 ListTile(
 leading: const Icon(Icons.settings,
 color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 45, 43, 43),
 title: const Text('Settings'),
 onTap: () {
 print('Settings');
 },
 ),
 ListTile(
 leading: const Icon(Icons.exit_to_app,
 color: Color.fromARGB(255, 202, 57, 57)),
 textColor: const Color.fromARGB(255, 45, 43, 43),
 title: const Text('Exit'),
 onTap: () {
 print('Exit');
 },
 ), 
const AboutListTile(
 icon: Icon(
 Icons.info,
 color: Color.fromARGB(255, 156, 13, 13),
 ),
 applicationIcon: Icon(
 Icons.local_play,
 ),
 applicationName: 'My App Inspiration',
 applicationVersion: '1.0.25',
 applicationLegalese: '© 2022 Company',
 child: Text('About app'),
 ), 
        ],   

      ),
    );
  }
}
