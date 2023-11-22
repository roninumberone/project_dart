import 'package:flutter/material.dart';
import 'package:membungkus/hewan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image(image: NetworkImage(objectNya()[0].getImg)),
                      Text(objectNya()[0].getJenis, style: TextStyle(fontSize: 20),),
                      Text(objectNya()[0].getJml_kaki, style: TextStyle(fontSize: 20),),
                      Text(objectNya()[0].getType, style: TextStyle(fontSize: 20),),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );

    List<Hewan> objectNya() {
      List<Hewan> daftarhewan = [];
      Hewan hewannya = Hewan(
         jenis: 'kuda',
      jml_kaki: '4',
      type: 'herbivora',
      img: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/201211130529126a0.jpg'
      );
      daftarhewan.add(hewannya);

      Hewan hewannya1 = Hewan(
          jenis: 'sapi',
      jml_kaki: '4',
      type: 'herbivora',
      img: 'https://storage.googleapis.com/palma/mandau/YSZeoeVmor3v1WAyYMcB.jpeg');
daftarhewan.add(hewannya1);
   return daftarhewan;
      
    }
  }
}