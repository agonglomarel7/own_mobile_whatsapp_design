import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final dGreen = const Color(0x00FF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(onPressed: () {

        },
        icon: Icon(Icons.menu, size: 30, ),),
        actions: [
          IconButton(onPressed: () {},
      icon: Icon(Icons.search, size: 30,),)
        ],
      ),
      body:Column(children: [
        MenuSection(),
        Container(
          color: Colors.green,
          height: 300,
        ),
        Container(
          color: Colors.red,
          height: 300,
        )
        ])
    );
  }
}

class MenuSection extends StatelessWidget {

  final List menuItems = ["Message","Online","Group","Calls"];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: dBlack,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((items) {
              return Container(child: Text(items,style: GoogleFonts.inter(
                color: Colors.white60,
                fontSize: 25
              ),
              ),
              margin: EdgeInsets.only(right: 55),);
            }).toList(),
          ),
        ),
      ),
    );
  }
}



