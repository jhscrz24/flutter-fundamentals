import 'package:flutter/material.dart';
import 'package:flutter_application_1/fundamentals.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => ButtonExample()},
    ),
  );
}

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => print("Elevated Button Clicked"),
              child: Text("ElevatedButton"),
            ),
            TextButton(
              onPressed: () => print("Text Button Clicked"),
              child: Text("TextButton"),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () => print("Icon Button Clicked"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("FloatingActionButton Clicked"),
        child: Icon(Icons.add),
      ),
    );
  }
}
