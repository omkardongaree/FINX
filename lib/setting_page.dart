import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.lightBlue),
            title: Text('Profile Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/profile_setting_page');
              // Navigate to profile settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.lightBlue),
            title: Text('Security Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/security_setting_page');
              // Navigate to security settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.lightBlue),
            title: Text('Notification Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/notification_setting_page');
              // Navigate to notification settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.lightBlue),
            title: Text('Financial Preferences'),
            onTap: () {
              Navigator.pushNamed(context, '/financial_pref_page');
              // Navigate to financial preferences page
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.lightBlue),
            title: Text('App Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/app_setting_page');
              // Navigate to app settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: Colors.lightBlue),
            title: Text('Privacy Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_setting_page');
              // Navigate to privacy settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.lightBlue),
            title: Text('Help & Support'),
            onTap: () {
              Navigator.pushNamed(context, '/help_support_page');
              // Navigate to help & support page
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.lightBlue),
            title: Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about_page');

              // Navigate to about page
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.lightBlue),
            title: Text('Logout'),
            onTap: () {
              // Implement logout functionality
            },
          ),
        ],
      ),
    );
  }
}
