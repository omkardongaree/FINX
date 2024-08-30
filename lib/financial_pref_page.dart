import 'package:flutter/material.dart';

class FinancialPreferencesPage extends StatefulWidget {
  @override
  _FinancialPreferencesPageState createState() => _FinancialPreferencesPageState();
}

class _FinancialPreferencesPageState extends State<FinancialPreferencesPage> {
  bool budgetAlerts = true;
  bool expenseTracking = false;
  bool investmentUpdates = true;
  bool savingsTips = false;
  bool dailySummaries = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Preferences'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Manage Your Financial Preferences',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SwitchListTile(
            title: Text('Budget Alerts'),
            subtitle: Text('Receive notifications for budget limits.'),
            value: budgetAlerts,
            onChanged: (bool value) {
              setState(() {
                budgetAlerts = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Expense Tracking'),
            subtitle: Text('Track your daily expenses automatically.'),
            value: expenseTracking,
            onChanged: (bool value) {
              setState(() {
                expenseTracking = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Investment Updates'),
            subtitle: Text('Get updates on your investments.'),
            value: investmentUpdates,
            onChanged: (bool value) {
              setState(() {
                investmentUpdates = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Savings Tips'),
            subtitle: Text('Receive tips to help you save more.'),
            value: savingsTips,
            onChanged: (bool value) {
              setState(() {
                savingsTips = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SwitchListTile(
            title: Text('Daily Summaries'),
            subtitle: Text('Get daily summaries of your financial activities.'),
            value: dailySummaries,
            onChanged: (bool value) {
              setState(() {
                dailySummaries = value;
              });
            },
            activeColor: Colors.blue, // Set switch active color to blue
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save preferences functionality
            },
            child: Text('Save Preferences'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set button color to blue
            ),
          ),
        ],
      ),
    );
  }
}
