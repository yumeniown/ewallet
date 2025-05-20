import 'package:flutter/material.dart';

class ExploreFeaturesSection extends StatelessWidget{
  const ExploreFeaturesSection({super.key});

  @override
  Widget build(BuildContext context){
    return SliverFillRemaining(
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
    );
  }
}