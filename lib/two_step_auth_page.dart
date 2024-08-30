import 'package:flutter/material.dart';

class TwoStepAuthPage extends StatefulWidget {
  @override
  _TwoStepAuthPageState createState() => _TwoStepAuthPageState();
}

class _TwoStepAuthPageState extends State<TwoStepAuthPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _verificationCodeController = TextEditingController();
  bool _isCodeSent = false;

  void _sendVerificationCode() {
    // Replace this with your actual code to send the verification code
    setState(() {
      _isCodeSent = true;
    });
  }

  void _verifyCode() {
    // Replace this with your actual code to verify the verification code
    if (_formKey.currentState?.validate() ?? false) {
      // Proceed with authentication
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two-Step Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (!_isCodeSent) ...[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _sendVerificationCode,
                  child: Text('Send Verification Code'),
                ),
              ] else ...[
                TextFormField(
                  controller: _verificationCodeController,
                  decoration: InputDecoration(labelText: 'Verification Code'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the verification code';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _verifyCode,
                  child: Text('Verify Code'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
