import 'package:flutter/material.dart';

class TransactionsSection extends StatelessWidget{
  const TransactionsSection({super.key});

  @override
  Widget build(BuildContext context){
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Recent Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
            ),),
          ),
    
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          int transactionNumber = index + 1;  

          return _buildTransactionTile(title: 'Transaction $transactionNumber', subtitle: 'Details of transacton $transactionNumber', 
            amount: '${transactionNumber.isEven ? '+' : '-'}\$${transactionNumber * 20}', isPositive: index.isEven);
            }, childCount: 20
          ),
        ),
      ])
    );
    // SliverToBoxAdapter(
    // child: Container(
    //   padding: EdgeInsets.all(16),
    //   constraints: BoxConstraints(
    //     minHeight: MediaQuery.of(context).size.height * 0.4,
            //   ),
  }

  Widget _buildTransactionTile({required String title, required String subtitle, required String amount, required isPositive}){
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepOrange.withOpacity(0.05),
          child: Icon(
            isPositive ? Icons.arrow_upward : Icons.arrow_downward,
            color: isPositive ? Colors.green : Colors.red,
            ),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold
          ),),
          subtitle: Text(subtitle),
          trailing: Text(amount, style: TextStyle(fontWeight: FontWeight.bold,
            color: isPositive ? Colors.green : Colors.red
          ),),
        ),
      ),
    );
  }
}