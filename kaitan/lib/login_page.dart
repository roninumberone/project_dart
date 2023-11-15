import 'package:flutter/material.dart';
import 'package:kaitan/main_page.dart';
import 'package:kaitan/siswa.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final inputController = TextEditingController();
    final inputController2 = TextEditingController();
    final inputController3 = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Silahkan Login', style: TextStyle(fontFamily:AutofillHints.birthdayDay),),
                   SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  prefixIcon: Icon(Icons.person) ,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                controller: inputController2,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  prefixIcon: Icon(Icons.home_filled) ,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
             SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                controller: inputController3,
                decoration: InputDecoration(
                  labelText: 'Nisn',
                  prefixIcon: Icon(Icons.nature_rounded) ,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
             SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
             Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context){
              String namanya = inputController.text.toString();
              String alamatnya = inputController2.text.toString();
              String nisnnya = inputController3.text.toString();
              Siswa objectnya = Siswa(nama:namanya, alamat: alamatnya, nisn: nisnnya );
              return MainPage(oleholeh: objectnya);
             }));
            }, child: Text('LOGIN')),
          ],
        ),
      ),
    );
  }
}
