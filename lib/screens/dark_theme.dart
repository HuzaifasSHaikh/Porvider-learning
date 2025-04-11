import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_changer_provider.dart';



class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark theme'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme
          ),
          Icon(Icons.heart_broken_sharp)
        ],
      ),
    );
  }
}
