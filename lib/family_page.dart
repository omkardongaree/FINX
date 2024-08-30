import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example data
    final List<Map<String, dynamic>> familyAccounts = [
      {
        'name': 'Ankita Deshmukh',
        'accounts': [
          {'bank': 'Bank A', 'accountType': 'Savings', 'balance': '₹15,000'},
          {'bank': 'Bank B', 'accountType': 'Checking', 'balance': '₹5,000'},
        ],
      },
      {
        'name': 'Virat Kohli',
        'accounts': [
          {'bank': 'Bank C', 'accountType': 'Savings', 'balance': '₹25,000'},
          {'bank': 'Bank D', 'accountType': 'Checking', 'balance': '₹10,000'},
          {'bank': 'Bank E', 'accountType': 'Investment', 'balance': '₹50,000'},
        ],
      },
    ];

    final Map<String, dynamic> loggedInUser = {
      'name': 'Logged In User',
      'accounts': [
        {'bank': 'Bank D', 'accountType': 'Checking', 'balance': '₹30,000'},
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Family Accounts', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Accounts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildAccountList(loggedInUser['accounts'] as List<Map<String, String>>, 'Your Accounts'),
            SizedBox(height: 20),
            Text(
              'Family Members Accounts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: familyAccounts.length,
                itemBuilder: (context, index) {
                  final member = familyAccounts[index];
                  return _buildFamilyMemberCard(
                    member['name'] as String,
                    member['accounts'] as List<Map<String, String>>,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build individual family member cards with an ExpansionTile
  Widget _buildFamilyMemberCard(String name, List<Map<String, String>> accounts) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: accounts.map((account) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: _buildAccountTile(
              account['bank']!,
              account['accountType']!,
              account['balance']!,
            ),
          );
        }).toList(),
      ),
    );
  }

  // Widget to build individual account tiles
  Widget _buildAccountTile(String bank, String accountType, String balance) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bank,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                accountType,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
          Text(
            balance,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Widget to build account list
  Widget _buildAccountList(List<Map<String, String>> accounts, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          children: accounts.map((account) {
            return _buildAccountTile(
              account['bank']!,
              account['accountType']!,
              account['balance']!,
            );
          }).toList(),
        ),
      ],
    );
  }
}
