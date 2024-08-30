import 'package:flutter/material.dart';

class AppSettingsPage extends StatefulWidget {
  @override
  _AppSettingsPageState createState() => _AppSettingsPageState();
}

class _AppSettingsPageState extends State<AppSettingsPage> {
  bool darkMode = false;
  bool biometricLogin = true;
  bool autoUpdate = true;
  bool currencyConversion = false;

  String selectedLanguage = 'English';
  String selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Customize Your App Settings',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SwitchListTile(
            title: Text('Dark Mode'),
            subtitle: Text('Enable dark mode for the app.'),
            value: darkMode,
            onChanged: (bool value) {
              setState(() {
                darkMode = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Biometric Login'),
            subtitle: Text('Use biometric login for added security.'),
            value: biometricLogin,
            onChanged: (bool value) {
              setState(() {
                biometricLogin = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Auto Update'),
            subtitle: Text('Automatically update the app.'),
            value: autoUpdate,
            onChanged: (bool value) {
              setState(() {
                autoUpdate = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Currency Conversion'),
            subtitle: Text('Enable currency conversion features.'),
            value: currencyConversion,
            onChanged: (bool value) {
              setState(() {
                currencyConversion = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SizedBox(height: 20),
          Text(
            'Language',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          DropdownButton<String>(
            value: selectedLanguage,
            onChanged: (String? newValue) {
              setState(() {
                selectedLanguage = newValue!;
              });
            },
            items: <String>['English', 'Spanish', 'French', 'German', 'Chinese']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            'Currency',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          DropdownButton<String>(
            value: selectedCurrency,
            onChanged: (String? newValue) {
              setState(() {
                selectedCurrency = newValue!;
              });
            },
            items: <String>['USD', 'EUR', 'INR', 'GBP', 'JPY']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            'Backup & Restore',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text('Backup Data'),
            trailing: Icon(Icons.backup, color: Colors.blue), // Set icon color to blue
            onTap: () {
              _backupData(); // Call the backup data function
            },
          ),
          ListTile(
            title: Text('Restore Data'),
            trailing: Icon(Icons.restore, color: Colors.blue), // Set icon color to blue
            onTap: () {
              _restoreData(); // Call the restore data function
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save settings functionality
            },
            child: Text('Save Settings'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set button color to blue
            ),
          ),
        ],
      ),
    );
  }

  // Function to handle data backup
  void _backupData() {
    // Implement your backup functionality here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Backup started')),
    );
  }

  // Function to handle data restore
  void _restoreData() {
    // Implement your restore functionality here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Restore started')),
    );
  }
}
