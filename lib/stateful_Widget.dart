import 'dart:async';

import 'package:flutter/material.dart';



class stateFull extends StatefulWidget {
  const stateFull({super.key});

  @override
  State<stateFull> createState() => _stateFullState();
}

class _stateFullState extends State<stateFull> {
  int count = 0;
@override
  // void initState() {
  //   super.initState();
  //   // TODO: implement initState
  //   Timer.periodic(Duration(seconds : 1), (Timer) {
  //     x++;
  //     // setState(() {
  //     //
  //     // });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Nigga'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(count.toString(),style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),
          )
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //       setState(() {
      //
      //       });
      //       x++;
      //
      //     },
      //     child: Icon(Icons.add),
      //     ),
    );
  }
}
