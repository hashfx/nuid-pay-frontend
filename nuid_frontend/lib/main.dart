import 'package:flutter/material.dart';
import 'prof_nav_drawer.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide the default hamburger icon
        title: Row(
          children: [
            GestureDetector(
              onHorizontalDragEnd: (details) {
                // Open or close drawer based on the direction of the swipe
                if (details.primaryVelocity! > 0) {
                  _scaffoldKey.currentState?.openDrawer();
                } else if (details.primaryVelocity! < 0 &&
                    _scaffoldKey.currentState!.isDrawerOpen) {
                  Navigator.of(context).pop(); // Close the drawer
                }
              },
              child: InkWell(
                onTap: () {
                  // Handle user icon click (open navigation drawer)
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: CircleAvatar(
                  // Load the user image from the server
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/MetaMask_Fox.svg/1200px-MetaMask_Fox.svg.png'),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            const Text(
              'NuID',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.payment,
              size: 28.0,
              color: Colors.purple,
            ),
            onPressed: () {
              // Handle Pay button click
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.qr_code,
              size: 28.0,
              color: Colors.purple,
            ),
            onPressed: () {
              // Handle QR code button click
            },
          ),
        ],
        backgroundColor: Colors.deepPurple,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(20),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 600 ? 50.0 : 16.0,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            // Square container
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Transfer Crypto',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  // Clickable Container
                  InkWell(
                    onTap: () {
                      // Handle Click on My NuID Container
                      // Navigate to another page or perform other actions
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'My NuID',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FutureBuilder<String>(
                                future: fetchDataFunction(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    return Text(
                                      snapshot.data ??
                                          '', // Display data or default value
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: const Column(
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter payment amount',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            // Handle Phrycto Pay button click
                          },
                          child: const Text('Phrycto Pay'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
      drawer: ProfNavDrawer(), // Use the drawer from the external file
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
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Handle Home button click
                },
              ),
              IconButton(
                icon: const Icon(Icons.payment),
                onPressed: () {
                  // Handle Pay button click
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle Message button click
                },
              ),
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {
                  // Handle History button click
                },
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[200],
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }

  Future<String> fetchDataFunction() async {
    await Future.delayed(const Duration(seconds: 2));
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
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            FittedBox(
              child: Icon(
                icon,
                size: 40.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 8.0),
            FittedBox(
              child: Text(
                label,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
