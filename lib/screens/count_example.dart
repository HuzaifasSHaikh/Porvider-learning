import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/count_provider.dart';
import 'package:provider_statemanagement/stateful_Widget.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value, child){
          return Text(value.count.toString(),style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold
          ),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
