import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget{
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
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
}