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
            SizedBox(height: 16.0),
            // Square container
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
                  // square container
                  // Clickable Container
                  InkWell(
                    onTap: () {
                      // Handle Click on My NuID Container
                      // Navigate to another page or perform other actions
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My NuID',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FutureBuilder<String>(
                                // Assuming you have a function to fetch data from servers
                                // Replace fetchDataFunction with your actual function
                                future: fetchDataFunction(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    return Text(
                                      snapshot.data ??
                                          '', // Display data or default value
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Existing Transfer Crypto Container
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
                        // ... rest of the existing code
                      ],
                    ),
                  ),
                  // Existing Phrycto Pay Container
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
            // ... rest of the existing code
          ],
        ),
      ),
    );
  }

  // Replace this with your actual function to fetch data from servers
  Future<String> fetchDataFunction() async {
    // Simulate fetching data from servers
    await Future.delayed(Duration(seconds: 2));
    return '+91 XXXXXXXXXX@apt';
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
