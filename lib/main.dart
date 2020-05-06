import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/cardSection.dart';
import 'package:my_wallet_app/widgets/expenses.dart';

import 'widgets/header.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: ExpensesSection(),
          )
        ],
      ),
    );
  }
}
