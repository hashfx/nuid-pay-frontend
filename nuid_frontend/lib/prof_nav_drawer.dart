import 'package:flutter/material.dart';

class ProfNavDrawer extends StatelessWidget {
  const ProfNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'User Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Option 1'),
            onTap: () {
              // Handle Option 1 click
            },
          ),
          ListTile(
            title: Text('Option 2'),
            onTap: () {
              // Handle Option 2 click
            },
          ),
          // Add more ListTile widgets as needed
        ],
      ),
    );
  }
}
