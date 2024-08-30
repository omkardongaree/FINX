import 'package:flutter/material.dart';




class CreateGoalPage extends StatelessWidget {
  void _selectGoal(BuildContext context, String goal) {
    // Handle goal selection logic here
    // For example, navigate to a detailed goal setup page
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$goal goal selected'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Goal'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  GoalOption(
                    icon: Icons.directions_car,
                    text: 'Buy a car',
                    onTap: () => _selectGoal(context, 'Buy a car'),
                  ),
                  GoalOption(
                    icon: Icons.local_hospital,
                    text: 'Emergency Fund',
                    onTap: () => _selectGoal(context, 'Emergency Fund'),
                  ),
                  GoalOption(
                    icon: Icons.favorite,
                    text: 'Wedding',
                    onTap: () => _selectGoal(context, 'Wedding'),
                  ),
                  GoalOption(
                    icon: Icons.beach_access,
                    text: 'Vacation',
                    onTap: () => _selectGoal(context, 'Vacation'),
                  ),
                  GoalOption(
                    icon: Icons.home,
                    text: 'House',
                    onTap: () => _selectGoal(context, 'House'),
                  ),
                  GoalOption(
                    icon: Icons.create,
                    text: 'Custom',
                    onTap: () => _selectGoal(context, 'Custom'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle custom goal addition
                _showAddCustomGoalDialog(context);
              },
              child: Text('Add Custom Goal'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // background color
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddCustomGoalDialog(BuildContext context) {
    TextEditingController goalController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Custom Goal'),
          content: TextField(
            controller: goalController,
            decoration: InputDecoration(hintText: 'Enter custom goal'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _selectGoal(context, goalController.text);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class GoalOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  GoalOption({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        onTap: onTap,
      ),
    );
  }
}
