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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Stack')),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
              ),
          ],
        ),
        body: Stack(
          children: [
            // background layar
            Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          color: Color.fromARGB(255, 255, 250, 250),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // list
            ListView(
              children: [
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
                Text('Data Ke keberapa', style: TextStyle(fontSize: 30),),
              ],
            ),
            // 3yugygy
            Align(
              alignment: Alignment(0, 0.75),
              child: ElevatedButton(onPressed: () {}, child: Text('butoon')),
              )
          ],
        ),
      ),
    );
  }
}
