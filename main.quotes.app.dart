import 'package:flutter/material.dart';

void main() {
  runApp(IslamicQuotesApp());
}

class IslamicQuotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic Quotes',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/quotes': (context) => QuotesScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islamic Quotes'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 189, 186, 240),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 174, 221, 201),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Islamic Quotes'),
              onTap: () {
                Navigator.pushNamed(context, '/quotes');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Islamic Quotes App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class QuotesScreen extends StatelessWidget {
  List<String> quotes = [
    'Do not grieve, indeed Allah is with us',
    'Seek help through patience and prayer. Indeed, Allah is with the patient',
    'But surely to your lord is the return of all',
    'If something is destined for you, never n a million years will it be for somebody else',
    'Say Allah {Alone} do i worship sincere to him in my religion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islamic Quotes'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Islamic Quotes'),
              onTap: () {
                Navigator.pushNamed(context, '/quotes');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(quotes[index]),
          );
        },
      ),
    );
  }
}
