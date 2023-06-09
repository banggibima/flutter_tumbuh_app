import 'package:flutter/material.dart';
import 'package:flutter_tumbuh_app/providers/favorite_plant_provider.dart';
import 'package:flutter_tumbuh_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritePlantProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
