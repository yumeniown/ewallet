import 'package:flutter/material.dart';

class BalanceSection extends StatelessWidget{
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
      backgroundColor: Colors.deepOrange,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        background: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('\$5,270.00', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold
            ),),
            Text('Current Balance', style: TextStyle(color: Colors.white70, fontSize: 16, //fontWeight: FontWeight.bold
            ),),
          ],
        ),
        centerTitle: false, 
        title: Text('Wallet', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)), 
      ),
    );
  }
}