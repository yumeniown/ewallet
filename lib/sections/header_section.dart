import  "package:flutter/material.dart";

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
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
    );
  }
}