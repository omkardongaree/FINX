import 'package:flutter/material.dart';

class TwoFactorAuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two-Factor Authentication'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Two-Factor Authentication',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Enable Two-Factor Authentication for added security.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            SwitchListTile(
              title: Text('Enable Two-Factor Authentication'),
              value: true, // Set this to a variable based on user preference
              onChanged: (bool value) {
                // Handle enable/disable logic
              },
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/two_step_auth_page');
                  // Handle two-factor authentication setup
                },
                child: Text('Set Up Two-Factor Authentication'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
