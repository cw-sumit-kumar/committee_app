import 'package:committee_project/ui/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/userProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Indian Committee',
        theme: ThemeData(
            primaryColor: Color(0xAA0b03fc),
            backgroundColor: Colors.white,
            hoverColor: Color(0xAA4A5AEA),
            inputDecorationTheme: InputDecorationTheme(
                fillColor: Colors.white,
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xAA4A5AEA), width: 1.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).primaryColor, width: 1.0),
                ),
                border: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xAA4A5AEA), width: 1.0),
                ),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor)),
        home: const SplashPage(),
      ),
    );
  }
}
