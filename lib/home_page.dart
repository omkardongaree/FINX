import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FinX',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            letterSpacing: 2.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with actual image path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hi, Omkar', // Replace with actual account holder name
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance, color: Colors.lightBlue),
              title: Text('Accounts'),
              onTap: () {
                Navigator.pushNamed(context, '/account_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.swap_vert, color: Colors.lightBlue),
              title: Text('Transaction'),
              onTap: () {
                Navigator.pushNamed(context, '/transactions_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt_long, color: Colors.lightBlue),
              title: Text('Bills Payment'),
              onTap: () {
                Navigator.pushNamed(context, '/bill_payment_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.show_chart, color: Colors.lightBlue),
              title: Text('Personal Investment '),
              onTap: () {
                Navigator.pushNamed(context, '/investment_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.lightBlue),
              title: Text('Chatbot'),
              onTap: () {
                Navigator.pushNamed(context, '/chatbot_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.lightBlue),
              title: Text('Notification'),
              onTap: () {
                Navigator.pushNamed(context, '/notification_page');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.lightBlue),
              title: Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/setting_page');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Balance Container
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '₹ 50,000',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              SizedBox(height: 20),

              // Elevated buttons for Family and Recent Transactions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/family');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), backgroundColor: Colors.white,

                      ),
                      child: Text(
                        'Family',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/recent_transaction');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20), backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Recent Transactions',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // WebView for Investment Chart
              Container(
                height: 250,
                child: WebView(
                  initialUrl: 'https://www.tradingview.com/chart/?symbol=NASDAQ%3AAAPL', // Replace with your URL
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              SizedBox(height: 20),

              // Top Stock Section Title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Stock',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

              // Top Stock Containers - Vertical layout for each stock
              Column(
                children: [
                  _buildStockContainer('Apple', 'AAPL', '\$150.00', '+2.5%', 'assets/apple.png'),
                  SizedBox(height: 10),
                  _buildStockContainer('Google', 'GOOGL', '\$2800.00', '+1.2%', 'assets/google.png'),
                  SizedBox(height: 10),
                  _buildStockContainer('Amazon', 'AMZN', '\$3400.00', '+3.1%', 'assets/amazon.png'),
                  SizedBox(height: 10),
                  _buildStockContainer('Microsoft', 'MSFT', '\$290.00', '+0.8%', 'assets/microsoft.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create stock container
  Widget _buildStockContainer(String companyName, String symbol, String price, String percentage, String logoPath) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                logoPath,
                width: 40,
                height: 40,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 40, color: Colors.red);
                },
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(companyName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(symbol, style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(percentage, style: TextStyle(fontSize: 12, color: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }
}
