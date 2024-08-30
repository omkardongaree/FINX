import 'package:flutter/material.dart';


class RecentTransactionsPage extends StatefulWidget {
  @override
  _RecentTransactionsPageState createState() => _RecentTransactionsPageState();
}

class _RecentTransactionsPageState extends State<RecentTransactionsPage> {
  final List<Map<String, dynamic>> familyAccounts = [
    {
      'name': 'Ankita Deshmukh',
      'transactions': [
        {'description': 'Netflix Subscription', 'icon': 'assets/netflix.png', 'amount': '₹499.00'},
        {'description': 'YouTube Premium', 'icon': 'assets/youtube.png', 'amount': '₹129.00'},
        {'description': 'Amazon Shopping', 'icon': 'assets/amazon.png', 'amount': '₹1500.00'},
      ],
    },
    {
      'name': 'Virat Kohli',
      'transactions': [
        {'description': 'Grocery Store', 'icon': 'assets/grocery.png', 'amount': '₹1200.00'},
        {'description': 'Online Course', 'icon': 'assets/course.png', 'amount': '₹2000.00'},
      ],
    },
  ];

  String? selectedFamilyMember;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent Transactions'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              _showDateRangePicker(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              hint: Text('Select Family Member'),
              value: selectedFamilyMember,
              onChanged: (String? newValue) {
                setState(() {
                  selectedFamilyMember = newValue;
                });
              },
              items: familyAccounts.map<DropdownMenuItem<String>>((member) {
                return DropdownMenuItem<String>(
                  value: member['name'] as String,
                  child: Text(member['name'] as String),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Spending',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Monday - Today'),
                  SizedBox(height: 8),
                  Column(
                    children: _buildRecentSpendingItems(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildRecentSpendingItems() {
    if (selectedFamilyMember == null) {
      return [];
    }

    final member = familyAccounts.firstWhere((m) => m['name'] == selectedFamilyMember);
    return (member['transactions'] as List<Map<String, dynamic>>).map<Widget>((transaction) {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(transaction['icon']),
            radius: 20,
          ),
          title: Text(transaction['description']),
          trailing: Text(
            transaction['amount'],
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }).toList();
  }

  void _showDateRangePicker(BuildContext context) async {
    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            hintColor: Colors.blue,
            colorScheme: ColorScheme.light(primary: Colors.blue),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      print('Picked date range: ${picked.start} - ${picked.end}');
    }
  }
}
