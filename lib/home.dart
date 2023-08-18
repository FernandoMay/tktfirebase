import 'package:flutter/material.dart';
import 'package:tkts/addticket.dart';
import 'package:tkts/ticket.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Venta de Boletos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TicketScreen(ticketType: 'bus_tickets')),
                );
              },
              child: const Text('Boletos de Autobús'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TicketScreen(ticketType: 'flight_tickets')),
                );
              },
              child: const Text('Boletos de Avión'),
            ),
            // Agrega más botones para otros tipos de boletos o eventos
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const AddTicketScreen(ticketType: 'bus_tickets')),
        );
      }),
    );
  }
}
