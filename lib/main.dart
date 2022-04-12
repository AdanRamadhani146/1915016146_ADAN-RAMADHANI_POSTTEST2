import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Food Shop'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              onDetailsPressed: () {},
              accountName: Text('Adan Ramadhani'),
              accountEmail: Text('adanramadhani343@gmail.com'),
              currentAccountPicture: Hero(
                tag: 'Profile',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logofood.png'),
                  radius: 80,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Menu Utama'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHome(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
