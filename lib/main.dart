import 'package:flutter/material.dart';
import 'package:package_provider_flutter_counter/providers/counter_provider.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter State',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Package Provider Counter'),
    );
  }
}
