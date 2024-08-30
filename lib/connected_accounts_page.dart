import 'package:flutter/material.dart';

class ConnectedAccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Accounts'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Connected Account List
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Omkar'),
              ),
              SizedBox(height: 20),
              // Add More Accounts Button
              ElevatedButton(
                onPressed: () {
                  // Implement add more accounts functionality here
                },
                child: Text(
                  '+ Add account',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
              Spacer(),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to HomePage
                  Navigator.pushReplacementNamed(context, '/home_page');
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
