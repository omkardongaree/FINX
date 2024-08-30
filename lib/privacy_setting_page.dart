import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatefulWidget {
  @override
  _PrivacySettingsPageState createState() => _PrivacySettingsPageState();
}

class _PrivacySettingsPageState extends State<PrivacySettingsPage> {
  bool locationAccess = false;
  bool dataSharing = true;
  bool personalizedAds = false;
  bool trackingProtection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Manage Your Privacy Settings',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SwitchListTile(
            title: Text('Location Access'),
            subtitle: Text('Allow the app to access your location.'),
            value: locationAccess,
            activeColor: Colors.blue, // Toggle color
            onChanged: (bool value) {
              setState(() {
                locationAccess = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Data Sharing'),
            subtitle: Text('Share your data with third-party services.'),
            value: dataSharing,
            activeColor: Colors.blue, // Toggle color
            onChanged: (bool value) {
              setState(() {
                dataSharing = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Personalized Ads'),
            subtitle: Text('Receive ads based on your interests.'),
            value: personalizedAds,
            activeColor: Colors.blue, // Toggle color
            onChanged: (bool value) {
              setState(() {
                personalizedAds = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Tracking Protection'),
            subtitle: Text('Prevent websites from tracking your activity.'),
            value: trackingProtection,
            activeColor: Colors.blue, // Toggle color
            onChanged: (bool value) {
              setState(() {
                trackingProtection = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            'Data Management',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text('Download Your Data'),
            trailing: Icon(Icons.download, color: Colors.lightBlue), // Icon color
            onTap: () {
              Navigator.pushNamed(context, '/download-data');
            },
          ),
          ListTile(
            title: Text('Delete Account'),
            trailing: Icon(Icons.delete, color: Colors.lightBlue), // Icon color
            onTap: () {
              Navigator.pushNamed(context, '/delete-account');
            },
          ),
          SizedBox(height: 20),
          Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text('View Privacy Policy'),
            trailing: Icon(Icons.policy, color: Colors.lightBlue), // Icon color
            onTap: () {
              Navigator.pushNamed(context, '/privacy-policy');
            },
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.description, color: Colors.lightBlue), // Icon color
            onTap: () {
              Navigator.pushNamed(context, '/terms-of-service');
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save privacy settings functionality
            },
            child: Text('Save Settings'),
          ),
        ],
      ),
    );
  }
}
