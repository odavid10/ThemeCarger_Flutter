import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tema_provider/blocs/theme.dart';

class HomePage extends StatelessWidget {
  
  final theme = Provider.of<ThemeChanger>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar')
      ),
      body: ListaBotones(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => theme.setTheme(ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.line,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.line,
          ),
        )),
      ),
    );
  }
}

class ListaBotones extends StatelessWidget {
  
  final theme = Provider.of<ThemeChanger>(context);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text('Light'),
          onPressed: () => theme.setTheme(ThemeData.light()),
        ),
        FlatButton(
          child: Text('Dark'),
          onPressed: () => theme.setTheme(ThemeData.dark()),
        ),
      ],
    );
  }
}