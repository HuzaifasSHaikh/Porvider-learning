import 'package:flutter/material.dart';

import 'dark_theme.dart';


class NotifyListnerSceen extends StatelessWidget {
  NotifyListnerSceen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toogle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: toogle,
              builder: (context, value, child) {
                return  TextFormField(
                  obscureText: toogle.value,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffix: InkWell(
                          onTap: (){
                            toogle.value = !toogle.value;
                          },
                          child: toogle.value ? Icon(Icons.visibility_off) : Icon(Icons.visibility)
                      )
                  ),
                );
              }
          ),
          // TextFormField(
          //   obscureText: toogle.value,
          //   decoration: InputDecoration(
          //     hintText: 'Password',
          //     suffix: InkWell(
          //       onTap: (){
          //         toogle.value = !toogle.value;
          //       },
          //         child: toogle.value ? Icon(Icons.visibility_off) : Icon(Icons.visibility)
          //     )
          //   ),
          // ),
         Center(
           child: ValueListenableBuilder(
               valueListenable: _counter,
               builder: (context, value, child){
                 return Text(_counter.value.toString(), style: TextStyle(
                   fontSize: 35,
                   fontWeight: FontWeight.bold
                 ),);
               }
           ),
         )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        _counter.value++;
        print(_counter.value.toString());
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>DarkThemeScreen()));
        
      },
        child: Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}
