import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int button = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          //actionsIconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ],
          toolbarHeight: 65.0,
          centerTitle: true,
          backgroundColor: Colors.red[600],
          title: Text(
            ' سنگ    کاغذ    قیچی',
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage('images/$top.png'),
                height: 100,
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    button = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Image(
                image: AssetImage('images/$button.png'),
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          //actionsIconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ],
          toolbarHeight: 65.0,
          centerTitle: true,
          backgroundColor: Colors.red[600],
          title: Text(
            ' سنگ    کاغذ    قیچی',
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Image(
                      image: AssetImage('images/1.png'),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Text(
                        'شروع بازی',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Image(
                      image: AssetImage('images/2.png'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
