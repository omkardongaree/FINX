import 'package:flutter/material.dart';
import 'live_chat_page.dart';
import 'email_support_page.dart';
import 'phone_support_page.dart';
import 'account_issues_page.dart';
import 'security_concerns_page.dart';
import 'payment_problems_page.dart';
import 'send_feedback_page.dart';

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'How can we help you?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for help...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.chat_bubble, color: Colors.lightBlue),
            title: Text('Live Chat'),
            subtitle: Text('Chat with our support team.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LiveChatPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.lightBlue),
            title: Text('Email Support'),
            subtitle: Text('Send us an email for assistance.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailSupportPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.lightBlue),
            title: Text('Phone Support'),
            subtitle: Text('Call us for immediate support.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhoneSupportPage()),
              );
            },
          ),
          SizedBox(height: 20),
          Text(
            'Common Issues',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.lightBlue),
            title: Text('Account Issues'),
            subtitle: Text('Problems with your account settings.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountIssuesPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.lightBlue),
            title: Text('Security Concerns'),
            subtitle: Text('Report security issues or suspicious activity.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecurityConcernsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.lightBlue),
            title: Text('Payment Problems'),
            subtitle: Text('Issues with payments and transactions.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentProblemsPage()),
              );
            },
          ),
          SizedBox(height: 20),
          Text(
            'Feedback',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.thumb_up, color: Colors.lightBlue),
            title: Text('Send Feedback'),
            subtitle: Text('Tell us how we can improve.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendFeedbackPage()),
              );
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save support settings functionality
            },
            child: Text('Submit Request'),
          ),
        ],
      ),
    );
  }
}
