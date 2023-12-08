import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  var left_dice_num=1;
  var right_dice_num=1;
  void result(){
    setState(() {
      left_dice_num=Random().nextInt(6)+1;
      right_dice_num=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tesst"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                   result();
                    },
                      child: Image(image: AssetImage('dice$left_dice_num.png')))),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                   result();
                    },
                      child: Image(image: AssetImage('dice$right_dice_num.png')))),
            ],
          ),
        ));
  }
}
