import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_19710036/main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 10);

    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage(
                  'assets/images/hadi.jpeg',
                )),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                title: Text(
                  '19710036',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                title: Text(
                  'Miftah Hadi',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: Text(
                  'Cempaka Hulu Utara',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.teal,
                ),
                title: Text(
                  'Cempaka,12-10-2000',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: Text(
                  'Si 5a Reguler Bjb',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
