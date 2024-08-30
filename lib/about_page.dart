import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'About FinX',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'FinX is a cutting-edge financial advisor app designed to help families manage their finances effectively. '
                'Our mission is to provide users with the tools and knowledge they need to achieve financial stability and reach their financial goals.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Our Mission',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'At FinX, we believe that everyone deserves financial freedom. Our mission is to make financial planning simple, accessible, and effective for all families. '
                'We aim to empower our users with the insights and strategies they need to make informed financial decisions.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Meet Our Team',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/team_member_1.jpg'),
            ),
            title: Text('Omkar Dongare'),
            subtitle: Text('CEO & Founder'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/team_member_2.jpg'),
            ),
            title: Text('Sadanand Sawant'),
            subtitle: Text('Chief Financial Officer'),
          ),
          SizedBox(height: 20),
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('support@finxapp.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+1 234 567 890'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Address'),
            subtitle: Text('123 FinX Street, Financial District, Mumbai, India'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement any additional action
            },
            child: Text('Learn More'),
          ),
        ],
      ),
    );
  }
}
