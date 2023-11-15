import 'package:flutter/material.dart';
import 'package:kaitan/second_page.dart';
import 'package:kaitan/siswa.dart';

class MainPage extends StatelessWidget {
Siswa oleholeh;
  MainPage({super.key, required this.oleholeh});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page'),),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(oleholeh.getNama),
            Text(oleholeh.getAlamat),
            Text(oleholeh.getNisn),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return SecondPage(kado: oleholeh);
              }));
            }, child: Text("Page2"))
          ],
        ),
      ),
    );
  }
}