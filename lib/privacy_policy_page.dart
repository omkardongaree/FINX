import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Your privacy policy content goes here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
