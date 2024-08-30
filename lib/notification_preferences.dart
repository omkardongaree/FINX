import 'package:flutter/material.dart';

class NotificationPreferencesPage extends StatefulWidget {
  @override
  _NotificationPreferencesPageState createState() => _NotificationPreferencesPageState();
}

class _NotificationPreferencesPageState extends State<NotificationPreferencesPage> {
  bool promotionalNotifications = true;
  bool transactionalNotifications = true;
  bool reminderNotifications = false;
  bool activityNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Preferences'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select the types of notifications you want to receive:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Promotional Notifications'),
              subtitle: Text('Receive promotional offers and discounts.'),
              value: promotionalNotifications,
              onChanged: (bool value) {
                setState(() {
                  promotionalNotifications = value;
                });
              },
              activeColor: Colors.blue,
            ),
            SwitchListTile(
              title: Text('Transactional Notifications'),
              subtitle: Text('Receive updates about your transactions.'),
              value: transactionalNotifications,
              onChanged: (bool value) {
                setState(() {
                  transactionalNotifications = value;
                });
              },
              activeColor: Colors.blue,
            ),
            SwitchListTile(
              title: Text('Reminder Notifications'),
              subtitle: Text('Get reminders about upcoming events or tasks.'),
              value: reminderNotifications,
              onChanged: (bool value) {
                setState(() {
                  reminderNotifications = value;
                });
              },
              activeColor: Colors.blue,
            ),
            SwitchListTile(
              title: Text('Activity Notifications'),
              subtitle: Text('Stay informed about app activities.'),
              value: activityNotifications,
              onChanged: (bool value) {
                setState(() {
                  activityNotifications = value;
                });
              },
              activeColor: Colors.blue,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save preferences functionality
              },
              child: Text('Save Preferences'),
            ),
          ],
        ),
      ),
    );
  }
}
