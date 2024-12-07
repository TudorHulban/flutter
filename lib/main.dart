import 'package:flutter/material.dart';
import 'date_format.dart';

String generateMessage(DateTime timestamp) {
  String formattedDate = DateFormatter.formatDate(timestamp);

  return 'Hi, Flutter! Date is $formattedDate';
}

void main() {
  DateTime now = DateTime.now();

  runApp(
    MyApp(message: generateMessage(now)),
  );
}

class MyApp extends StatelessWidget {
  final String message;

  const MyApp({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter App'),
        ),
        body: Center(
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
