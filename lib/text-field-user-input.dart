import 'package:flutter/material.dart';
import 'package:flutter_application_1/fundamentals.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
    ),
  );
}

class HomeScreen extends StatelessWidget {
  final TextEditingController cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Name Detector')),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            TextField(
              controller: cont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter your name",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                String name = cont.text;

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Hello, $name!")));
              },
            ),
          ],
        ),
      ),
    );
  }
}
