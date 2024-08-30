import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms of Service'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Your terms of service content goes here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
