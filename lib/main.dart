import 'package:flutter/material.dart';

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
            SliverAppBar(
              // expandedHeight: 300,
              toolbarHeight: 100,
              // pinned: true,
              // floating: true,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                      children: [
                        Text('Welcome Back!', style: TextStyle(fontSize: 18, color: Colors.grey[600]
                        ),),
                        SizedBox(height: 4,),
                        Text('yumeniown', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87
                        ),),
                      ]),
                      IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined, color: Colors.deepOrange, size: 28,)
                      )
                    ],),
                  ],),
                ),
                // background: Image.network("", fit: BoxFit.cover,),
                // title: Text('data'),
              ),
            ),
            SliverAppBar(
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
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 140,
              toolbarHeight: 140,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Quick Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildQuickAction(icon: Icons.send, label: 'Send'),
                        _buildQuickAction(icon: Icons.receipt, label: 'Request'),
                        _buildQuickAction(icon: Icons.add, label: 'Top up'),
                      ],
                    )
                  ],
                ),),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Recent Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              int transactionNumber = index + 1;  

              return _buildTransactionTile(title: 'Transaction $transactionNumber', subtitle: 'Details of transacton $transactionNumber', 
                amount: '${transactionNumber.isEven ? '+' : '-'}\$${transactionNumber * 20}', isPositive: index.isEven);
              }, childCount: 20
            ),),
            // SliverToBoxAdapter(
            // child: Container(
            //   padding: EdgeInsets.all(16),
            //   constraints: BoxConstraints(
            //     minHeight: MediaQuery.of(context).size.height * 0.4,
            //   ),
            SliverFillRemaining(
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8,),
                  Icon(Icons.lightbulb_outline, size: 64, color: Colors.deepOrange,),
                  SizedBox(height: 16,),
                  Text('Explore New Features', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87
                  ),),
                  SizedBox(height: 8,),
                  Text('Stay tunned for exciting updates and improvements', style: TextStyle(
                    fontSize: 16, color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24,),
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                          ),
                        ), child: Text('Learn more', style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],),
                  ),
                );
              },
            ),
          ),
            // ),
        ],),
      ),
    );
  }

  Widget _buildQuickAction({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.deepOrange.withOpacity(0.1),
          child: Icon(icon, color: Colors.deepOrange, size: 30,
          ),
        ),
        SizedBox(height: 8,),
        Text(label, style: TextStyle(fontSize: 14),),
      ],
    );
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