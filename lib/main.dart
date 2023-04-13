import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:testapp/pages/splash_screen.dart';
import 'package:testapp/pages/login_page.dart';
import 'package:testapp/pages/forgot_password_verification_page.dart';
import 'package:testapp/pages/profile_page.dart';
import 'package:testapp/common/theme_helper.dart';
import 'package:testapp/pages/registration_page.dart';
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

class LoginUiApp extends StatelessWidget {

  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#8A02AE');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Se Connecter',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: _accentColor),
      ),
      home: SplashScreen(title: 'Connectez-vous à TicketRap'),
    );
  }
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
              Text("Se Connecter"),
            ][_currentIndex],
          ),
          body: [
            HomePage(),
            BookingPage(),
            PromoPage(),
            LoginPage(),
            ForgotPasswordVerificationPage(),
            ProfilePage(),
            RegistrationPage(),

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
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Se connecter'
              ),
            ],
          ),
        )
    );
  }
}


