import 'package:flutter/material.dart';
import 'package:flutter_application_1/fundamentals.dart';

void routes() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 100),
        child: ElevatedButton(
          child: const Text(
            'Details Screen',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/details');
          },
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      body: ElevatedButton(
        child: const Text(
          'Home Screen',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
