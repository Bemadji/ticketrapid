import 'package:flutter/material.dart';

import 'booking_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/ticket.png"),
          const Text("Bienvenue au TicketRapid",
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
            ),
          ),
          const Text("La plateforme de réservation de ticket en ligne",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                backgroundColor: MaterialStatePropertyAll(Colors.green)
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => BookingPage()
                  )
              );
            },
            child: Text("Réservez ici",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}
