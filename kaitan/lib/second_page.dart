import 'package:flutter/material.dart';
import 'package:kaitan/second_page.dart';
import 'package:kaitan/siswa.dart';

class SecondPage extends StatelessWidget {
  Siswa kado;
  SecondPage({super.key, required this.kado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page'),),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kado.getNama),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Page2"))
          ],
        ),
      ),
    );
  }
}