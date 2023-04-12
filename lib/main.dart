import 'package:flutter/material.dart';
import 'package:testapp/pages/home_page.dart';
import 'package:testapp/pages/booking_page.dart';
import 'package:testapp/pages/promo_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: [
              Text("Accueil"),
              Text("Agences"),
              Text("Nos promo"),
            ][_currentIndex],
          ),
          body: [
            HomePage(),
            BookingPage(),
            PromoPage(),
          ][_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            items:  const [
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


