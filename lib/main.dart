import 'package:flutter/material.dart';
import 'package:valley_app/cart/page.dart';
import 'package:valley_app/discover/page.dart';
import 'package:valley_app/home/page.dart';
import 'package:valley_app/preferences/colors.dart';
import 'package:valley_app/profile/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minima',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  int selectedIndex = 0;

  IconButton buildItemNav(IconData icon, int index){
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
    }, icon: Icon(icon, color: selectedIndex == index ? AppColor.whiteColor : AppColor.greyColor)
    );
  }

  List<Widget> pages = const[
      HomePage(),
      DiscoverPage(),
      CartPage(),
      ProfilePage(),
  ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: pages[selectedIndex],
    backgroundColor: AppColor.primaryColor,
    bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)),
      child: BottomAppBar(
        color: AppColor.semiColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildItemNav(Icons.home, 0),
            buildItemNav(Icons.explore, 1),
            buildItemNav(Icons.shopping_cart, 2),
            buildItemNav(Icons.person, 3),
          ],
        ),
       ),
    ),
    );
  }
}