import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/home_screen.dart';
import 'package:provider_statemanagement/provider/auth_provider.dart';
import 'package:provider_statemanagement/provider/count_provider.dart';
import 'package:provider_statemanagement/provider/example_one_provider.dart';
import 'package:provider_statemanagement/provider/favorite_provider.dart';
import 'package:provider_statemanagement/provider/theme_changer_provider.dart';
import 'package:provider_statemanagement/screens/count_example.dart';
import 'package:provider_statemanagement/screens/dark_theme.dart';
import 'package:provider_statemanagement/screens/example_one.dart';
import 'package:provider_statemanagement/screens/favorite_screen.dart';
import 'package:provider_statemanagement/screens/login_screen.dart';
import 'package:provider_statemanagement/screens/value_notify_listner.dart';
import 'package:provider_statemanagement/stateful_Widget.dart';


void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider()),
          ChangeNotifierProvider(create: (_)=> ExampleOneProvider()),
          ChangeNotifierProvider(create: (_)=> FavoriteItemsProvider()),
          ChangeNotifierProvider(create: (_)=> ThemeChanger()),
          ChangeNotifierProvider(create: (_)=> AuthProvider ()),

        ],
      child: Builder(builder: (BuildContext context){
        final themechanger = Provider.of<ThemeChanger>(context);
        return  MaterialApp(
          themeMode: themechanger.themeMode,
          darkTheme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.green
            ),
            brightness: Brightness.dark,
            iconTheme: IconThemeData(
              color: Colors.red
            )
          ),
          home: LoginScreen(),
        );
      }),
    );

  }
}


/*



ChangeNotifierProvider(
        create: (_)=> CountProvider(),
      child: MaterialApp(
        home: ExampleOne(),
      ),
    );
*/