import 'package:flutter/material.dart';

import 'sections/balance_section.dart';
import 'sections/explore_features_section.dart';
import 'sections/header_section.dart';
import 'sections/quick_actions_section.dart';
import 'sections/transactions_section.dart';

void main() {
  runApp(const EWalletApp());
}

class EWalletApp extends StatelessWidget{
  const EWalletApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            HeaderSection(),
            BalanceSection(),
            QuickActionsSection(),
            TransactionsSection(),
            ExploreFeaturesSection(),
        ],),
      ),
    );
  }
}