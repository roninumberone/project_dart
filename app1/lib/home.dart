// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Belajar android app'),),
        body:Column(
          children: [
            Flexible(
              flex: 2,
              fit:FlexFit.tight,
              child: Container(
                height: 150,
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 5,
              fit:FlexFit.tight,
              child: Container(
                child: Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAY9Fxbw6laa8dd2PisgJlrdkhrxs_cTNM_0NDREwnazyCDOkxDixcaaoqkhyBf8W9bOc&usqp=CAU'),
                ),
                color: Colors.blue,
              ),
            ),
          Flexible(
            flex: 2,
            fit:FlexFit.tight,
              child: Container(
                height: 150,
                color: Colors.black,
                child: Row(
children: [
  Expanded(
    child: Container(
      width: 20,
      color: Colors.amber,
    ),
  ),
  Expanded(
    flex: 3,
    child: Container(
      width: 30,
      color: Colors.black12,
    ),
  ),
  Expanded(
    child: Container(
      width: 20,
      color: Color.fromARGB(255, 255, 0, 0),
    ),
  ),
],
                ),
              ),
            ),
          ],
             )
            )
          );

  }
}