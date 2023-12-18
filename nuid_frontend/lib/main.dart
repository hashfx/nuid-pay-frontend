import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            icon: Icon(
              Icons.payment,
              size: 28.0,
              color: Colors.purple,
            ),
            onPressed: () {
              // Handle Pay button click
            },
          ),
          IconButton(
            icon: Icon(
              Icons.qr_code,
              size: 28.0,
              color: Colors.purple,
            ),
            onPressed: () {
              // Handle QR code button click
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transfer Crypto',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClickableIcon(
                        icon: Icons.phone,
                        label: 'To Mobile Number',
                        onPressed: () {
                          // Handle To Mobile Number click
                        },
                      ),
                      ClickableIcon(
                        icon: Icons.account_balance_wallet,
                        label: 'To Wallet Address',
                        onPressed: () {
                          // Handle To Wallet Address click
                        },
                      ),
                      ClickableIcon(
                        icon: Icons.account_box,
                        label: 'To Self Account',
                        onPressed: () {
                          // Handle To Self Account click
                        },
                      ),
                      ClickableIcon(
                        icon: Icons.account_balance,
                        label: 'Check Balance',
                        onPressed: () {
                          // Handle Check Balance click
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconTheme(
          data: IconThemeData(
            size: 28.0,
            color: Theme.of(context).primaryColor,
          ),
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
      ),
    );
  }
}

class ClickableIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ClickableIcon({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
