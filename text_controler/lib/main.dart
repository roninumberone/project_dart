import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


// Roni Romdhoni 
// Controller

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
String textUser = '';
String textPass = '';
final textControllerUser = TextEditingController();
final textControllerPass = TextEditingController();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('DANA')),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
          ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                  controller: textControllerUser,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(),
                    hintText: 'Masukan Username Anda',
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person_2_rounded),
                    // suffixIcon: Icon(Icons.clear_outlined, color: Colors.blue,)
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        textControllerUser.clear();
                      });
                    }, icon: Icon(Icons.clear_rounded)),
                    ),

                ),
              ),
               Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  controller: textControllerPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(),
                    hintText: 'Masukan Password Anda',
                    labelText: 'Password',
                    prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.lock)),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        // textControllerPass.clear();
                      });
                    }, icon: Icon(Icons.remove_red_eye_rounded)),
                  ),
                ),
              ),
              Center(child: ElevatedButton(onPressed: () {
                setState(() {
                  textUser = textControllerUser.text;
                  textPass = textControllerPass.text;
                });
              }, child: Text('Login'))),
              Center(
                child: Container(
                  height: 40,
                  child: Text(textUser, style: TextStyle(fontSize: 20),),
                ),
              ),
              Center(
                child: Container(
                  height: 40,
                  child: Text(textPass, style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
      ),
    );
  }
}