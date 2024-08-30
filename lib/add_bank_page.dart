import 'package:flutter/material.dart';

class ChooseBankPage extends StatelessWidget {
  final List<Map<String, String>> banks = [
    {
      'name': 'State Bank of India',
      'logo': 'assets/sbi.png',
    },
    {
      'name': 'HDFC Bank',
      'logo': 'assets/hdfc.png',
    },
    {
      'name': 'ICICI Bank',
      'logo': 'assets/icici.png',
    },
    {
      'name': 'Axis Bank',
      'logo': 'assets/axis.png',
    },
    {
      'name': 'Punjab National Bank',
      'logo': 'assets/pnb.png',
    },
    {
      'name': 'Kotak Mahindra Bank',
      'logo': 'assets/kotak.png',
    },
    {
      'name': 'IndusInd Bank',
      'logo': 'assets/indusind.png',
    },
    {
      'name': 'Bank of Baroda',
      'logo': 'assets/bob.png',
    },
    {
      'name': 'Canara Bank',
      'logo': 'assets/canara.png',
    },
    {
      'name': 'Union Bank of India',
      'logo': 'assets/union.png',
    },
    {
      'name': 'Yes Bank',
      'logo': 'assets/yes.png',
    },
    {
      'name': 'IDFC First Bank',
      'logo': 'assets/idfc.png',
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a Bank'),
      ),
      body: ListView.builder(
        itemCount: banks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              banks[index]['logo']!,
              width: 50,
              height: 50,
            ),
            title: Text(banks[index]['name']!),
            onTap: () {
              Navigator.pushNamed(context, '/add_manual_account_page');
              // Navigate to the Add Manual Account page with selected bank details
              Navigator.pushNamed(
                context,
                '/add_manual_account',
                arguments: banks[index],
              );
            },
          );
        },
      ),
    );
  }
}
