import 'package:flutter/material.dart';
import 'add_bank_page.dart';
import 'add_manual_account_page.dart';

class AddAccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo Image
              Image.asset(
                'assets/logo.png', // Ensure you have your logo image in the assets folder
                height: 150,
              ),
              SizedBox(height: 30),

              // Add Accounts Text
              Text(
                'Add accounts to FinX',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              // Features List
              ListTile(
                leading: Icon(Icons.security),
                title: Text('Security'),
                subtitle: Text('Your information is encrypted end-to-end.'),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy'),
                subtitle: Text('Control which accounts you give FinX access to.'),
              ),
              ListTile(
                leading: Icon(Icons.thumb_up),
                title: Text('Trust'),
                subtitle: Text('Secure your Wealth with Confidence.'),
              ),
              Spacer(),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Add Manual Account Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseBankPage ()),
                  );
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
