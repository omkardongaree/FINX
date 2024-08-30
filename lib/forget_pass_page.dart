import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Remove the title
        title: null,
        // You can add a leading widget if you want to show a back button or logo
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // App Logo
              Container(
                width: 150,  // Increased the size of the logo
                height: 150,
                child: Image.asset('assets/logo.png'), // Ensure the logo is in the assets folder
              ),
              SizedBox(height: 20),

              // Forgot Password Text
              Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
              SizedBox(height: 20),

              // Email Text Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email address',
                ),
              ),
              SizedBox(height: 20),

              // Send Request Button
              ElevatedButton(
                onPressed: () {
                  // Implement sending password reset email functionality here
                },
                child: Text(
                  'Send Request',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
              SizedBox(height: 20),

              // Back to Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Back to "),
                  TextButton(
                    onPressed: () {
                      // Implement navigation back to the login page here
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}// TODO Implement this library.