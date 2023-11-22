import 'package:display_object/hewan.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hewan"),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [             
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(width: 5)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: NetworkImage(buatObject()[0].getImg)),
                      Text(buatObject()[0].getJenis, style: TextStyle(fontSize: 20),),
                      Text(buatObject()[0].getJml_kaki, style: TextStyle(fontSize: 20),),
                      Text(buatObject()[0].getType, style: TextStyle(fontSize: 20),),
                    ],
                              ),
                )),
              Flexible(
                flex: 1,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage(buatObject()[1].getImg)),
                    Text(buatObject()[1].getJenis, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[1].getJml_kaki, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[1].getType, style: TextStyle(fontSize: 20),),
                  ],
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [             
              Flexible(
                flex: 1,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage(buatObject()[0].getImg)),
                    Text(buatObject()[0].getJenis, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[0].getJml_kaki, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[0].getType, style: TextStyle(fontSize: 20),),
                  ],
              )),
              Flexible(
                flex: 1,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage(buatObject()[1].getImg)),
                    Text(buatObject()[1].getJenis, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[1].getJml_kaki, style: TextStyle(fontSize: 20),),
                    Text(buatObject()[1].getType, style: TextStyle(fontSize: 20),),
                  ],
              )),
            ],
          ),
          
        ],
      ),
    );
  }
  List<Hewan> buatObject() {
    List<Hewan> daftarhewan = [];
    Hewan hewannya = Hewan(
      jenis: 'kuda',
      jml_kaki: '4',
      type: 'herbivora',
      img: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/201211130529126a0.jpg');
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