import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favorite_provider.dart';
import 'favorite_screen.dart';


class Myfavorite extends StatefulWidget {
  const Myfavorite({super.key});

  @override
  State<Myfavorite> createState() => _MyfavoriteState();
}

class _MyfavoriteState extends State<Myfavorite> {
  @override
  Widget build(BuildContext context) {
    final FavoriteProvider = Provider.of<FavoriteItemsProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favrorite app'),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteScreen()));
            },
            child: Icon(Icons.favorite),
          ),

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: FavoriteProvider.selectedItem.length,
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
