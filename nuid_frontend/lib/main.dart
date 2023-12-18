import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NuID'),
        actions: [
          IconButton(
            icon: Icon(Icons.payment),
            onPressed: () {
              // Handle Pay button click
            },
          ),
          IconButton(
            icon: Icon(Icons.qr_code),
            onPressed: () {
              // Handle QR code button click
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter payment amount',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle Phrycto Pay button click
              },
              child: Text('Phrycto Pay'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Handle Home button click
              },
            ),
            IconButton(
              icon: Icon(Icons.payment),
              onPressed: () {
                // Handle Pay button click
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                // Handle Message button click
              },
            ),
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                // Handle History button click
              },
            ),
          ],
        ),
      ),
    );
  }
}
