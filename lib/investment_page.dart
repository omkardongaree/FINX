import 'package:flutter/material.dart';

class InvestmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Advisor'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Investment Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Stocks: \₹20000.00',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                'Bonds: \₹10000.00',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                'Mutual Funds: \₹15000.00',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Performance Chart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Placeholder for Live Stock Performance Chart
              Container(
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  'Live Stock Performance Chart',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Recent Transactions List
              Column(
                children: [
                  _buildTransactionItem(
                    action: 'Buy',
                    description: 'Google Shares (5 shares at \₹45 each)',
                    amount: '\₹225',
                    percentage: '10%',
                    bgColor: Colors.red,
                    textColor: Colors.white,
                  ),
                  _buildTransactionItem(
                    action: 'Sell',
                    description: 'Apple Shares (3 shares at \₹150 each)',
                    amount: '\₹450',
                    percentage: '15%',
                    bgColor: Colors.green,
                    textColor: Colors.white,
                  ),
                  _buildTransactionItem(
                    action: 'Buy',
                    description: 'Amazon Shares (2 shares at \₹200 each)',
                    amount: '\₹400',
                    percentage: '12%',
                    bgColor: Colors.red,
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle add investment account action
                  },
                  child: Text(
                    'Add Investment Account',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionItem({
    required String action,
    required String description,
    required String amount,
    required String percentage,
    required Color bgColor,
    required Color textColor,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: bgColor,
          child: Icon(
            action == 'Buy' ? Icons.arrow_upward : Icons.arrow_downward,
            color: textColor,
          ),
        ),
        title: Text(
          description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('Change: $percentage'),
        trailing: Text(
          amount,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: bgColor,
          ),
        ),
      ),
    );
  }
}
