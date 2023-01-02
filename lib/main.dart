import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/homescreen.dart';
import 'package:flutter_provider_learn/provider/count_provider.dart';
import 'package:flutter_provider_learn/provider/favourite_provider.dart';
import 'package:flutter_provider_learn/provider/slider_provider.dart';
import 'package:flutter_provider_learn/screen/countexample.dart';
import 'package:flutter_provider_learn/screen/favouritesScreen.dart';
import 'package:flutter_provider_learn/screen/sliderexample.dart';
import 'package:flutter_provider_learn/whyProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouritesProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const FavourtitesScreen(),
      ),
    );
  }
}
