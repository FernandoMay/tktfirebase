import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddTicketScreen extends StatefulWidget {
  final String ticketType;

  const AddTicketScreen({super.key, required this.ticketType});

  @override
  _AddTicketScreenState createState() => _AddTicketScreenState();
}

class _AddTicketScreenState extends State<AddTicketScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<void> _addTicket() async {
    try {
      String name = _nameController.text;
      double price = double.parse(_priceController.text);

      await FirebaseFirestore.instance
          .collection(widget.ticketType)
          .add({'nombre': name, 'precio': price});

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Boleto agregado correctamente')),
      );

      _nameController.clear();
      _priceController.clear();
    } catch (e) {
      print('Error al agregar el boleto: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Boleto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre del Boleto'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Precio'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addTicket,
              child: const Text('Agregar Boleto'),
            ),
          ],
        ),
      ),
    );
  }
}
