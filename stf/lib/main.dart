import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
        int angka=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Column(
            children: [
              Text(angka.toString()),
              SizedBox(height: 10,),
             Center(child: ElevatedButton(
              onPressed: (){}, child: Text("Tambah1")
              )
              )
            ],
          ),
      ),
      );
  }
}