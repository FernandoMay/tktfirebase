import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> eventData;

  EventDetailsScreen({required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Evento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre: ${eventData['nombre']}'),
            Text('Fecha: ${eventData['fecha']}'),
            Text('Lugar: ${eventData['lugar']}'),
            // Agrega más detalles según la estructura de tus datos
          ],
        ),
      ),
    );
  }
}
