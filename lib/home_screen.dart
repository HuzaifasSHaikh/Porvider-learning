import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});


  int x = 1;
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('provider Statemanagement'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
           child: Center(
             child: Text(x.toString(), style: TextStyle(
               fontSize: 50,
               fontWeight: FontWeight.w900
             ),),
           ),
         )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            print(x);
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
