import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Title',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.brown,
        ),
        body: ProfileCard(),
      ),
    );
  }
}

// Practice: Profile Card App
class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Card')),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://scontent.fcgy1-1.fna.fbcdn.net/v/t39.30808-6/326241050_482376007307962_4005976515806314627_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ryCFyQtdVuMQ7kNvwGuunY-&_nc_oc=AdlGInUn28bNXafImw7cpZw1CO4yzmG_uB-8gWZa0Pf4RBlNlAbdZH2hF169EGd25LjMraYW1JVHXQb518ulxbIE&_nc_zt=23&_nc_ht=scontent.fcgy1-1.fna&_nc_gid=p5DyfjBIDTGJDF5ZLxYyrg&oh=00_AfVOAQ-VIUQbXMO9CHtoqnq-bZWlTyZJCWNFafjcDvxv6Q&oe=68A87C91",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Jehus Coroza",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "App Developer",
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 5),
                    Text("jehcrz@email.com"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// State Management Basics: Stateless vs Stateful
class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Text("Count: $count", style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

// Styling: Padding, Margin, Alignment, Decoration
class Styling extends StatelessWidget {
  const Styling({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: const Text(
          'Styled Container',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

// COLUMN, ROW, EXPANDED, STACK EXAMPLE
class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // horizontal alignment
          children: [
            Icon(Icons.home, size: 40, color: Colors.blue),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.settings, size: 40, color: Colors.green),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.lightBlue.shade100,
            child: Center(child: Text("Expanded takes remaining space")),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.amber),
            Text(
              "Stacked Text",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

// ICON EXAMPLE
class ForIcon extends StatelessWidget {
  const ForIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.favorite, color: Colors.red, size: 100);
  }
}

// IMAGES EXAMPLE
class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://flutter.dev/images/flutter-logo-sharing.png",
      height: 100,
    );
  }
}

// CONTAINER EXAMPLE
class Contain extends StatelessWidget {
  const Contain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      child: const Text(
        'Hello Worlds',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
