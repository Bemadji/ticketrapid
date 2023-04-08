import 'package:flutter/material.dart';
import 'package:testapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Home"),
        ),
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_repair),
                label: 'Agence'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.density_small_sharp),
                label: 'Offre de promo'
            ),
          ],
        ),
      )
    );
  }
}



