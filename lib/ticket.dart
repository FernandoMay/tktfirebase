import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tkts/event.dart';

class TicketScreen extends StatelessWidget {
  final String ticketType;

  TicketScreen({required this.ticketType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boletos Disponibles'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection(ticketType).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          var tickets = snapshot.data?.docs;

          return ListView.builder(
            itemCount: tickets?.length,
            itemBuilder: (context, index) {
              var ticketData = tickets?[index].data() as Map<String, dynamic>;

              // Supongamos que tienes campos 'nombre', 'precio', etc. en tus documentos
              String ticketName = ticketData['nombre'];
              double ticketPrice = ticketData['precio'];

              return ListTile(
                title: Text(ticketName),
                subtitle: Text('Precio: \$${ticketPrice.toStringAsFixed(2)}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EventDetailsScreen(eventData: ticketData)),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class TicketScreen extends StatelessWidget {
//   final String ticketType;

//   TicketScreen({required this.ticketType});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Boletos Disponibles'),
//       ),
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection(ticketType).snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(child: CircularProgressIndicator());
//           }

//           var tickets = snapshot.data.docs;

//           return ListView.builder(
//             itemCount: tickets.length,
//             itemBuilder: (context, index) {
//               var ticketData = tickets[index].data() as Map<String, dynamic>;
//               // Construye la interfaz para mostrar información de boleto
//               // Puedes utilizar ListTile, Card, u otros widgets según tu diseño
//             },
//           );
//         },
//       ),
//     );
//   }
// }
