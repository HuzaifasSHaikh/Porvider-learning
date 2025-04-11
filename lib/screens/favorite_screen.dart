import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/favorite_provider.dart';

import 'myfavorite.dart';



class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    // final FavoriteProvider = Provider.of<FavoriteItemsProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favrorite app'),
        actions: [
          InkWell(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Myfavorite()));
         },
            child: Icon(Icons.favorite),
          ),

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return Consumer<FavoriteItemsProvider>(builder: (context,value,child){
                    return ListTile(
                      onTap: (){

                        if(value.selectedItem.contains(index)){
                          value.removeItem(index);
                        }
                        else {
                          value.addItem(index);
                        }


                      },
                      title: Text('Item'+index.toString()),
                      trailing: value.selectedItem.contains(index)?Icon(Icons.favorite):Icon(Icons.favorite_border),
                    );
                  });
                },

                ),
          ),
          
        ],
      ),
    );
  }
}
