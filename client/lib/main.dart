import 'package:flutter/material.dart';
import 'package:tugas_uas/presentation/pages/home.dart';
import 'package:tugas_uas/presentation/main_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.lightBlue, elevation: 0)),
      title: 'Tempat Barang',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
      },
    );
  }
}
