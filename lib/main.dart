import 'package:flutter/material.dart';

//Import widgets
import 'HeaderContent.dart';
import 'DonutCard.dart';
import 'NewItemsOption.dart';
import 'DessertCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dezzert App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderContent(),
          const SizedBox(
            height: 30,
          ),
          const DonutCard(),
          const NewItemsOption(),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                DessertCard(
                  imageName: "assets/images/dessert1.png",
                  dessertTitle: "Berry Pancakes",
                  dessertDesc: "Blueberry Pancakes",
                  dessertPrice: 6.80,
                  leftVal: 15,
                  topVal: 125,
                ),
                SizedBox(
                  width: 30,
                ),
                DessertCard(
                  imageName: "assets/images/dessert2.png",
                  dessertTitle: "Banana Bread",
                  dessertDesc: "Banana bread chocolate",
                  dessertPrice: 7.80,
                  leftVal: 7.5,
                  topVal: 125,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
