import 'package:flutter/material.dart';
import 'package:listview/hewan.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<hewan> daftarhewan = [];
  ScrollController scrollController = ScrollController();

  @override
  void inistate() {
    buatObject();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          controller: scrollController,
          itemCount: buatObject().length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                              image: NetworkImage(daftarhewan[index].getImg)),
                        ),
                      ),
                      Flexible(
                          flex: 2,
                          child: Center(
                              child: Text(
                            daftarhewan[index].getJenis.toString(),
                            style: TextStyle(fontSize: 30),
                          ))),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<hewan> buatObject() {
    hewan hewannya = hewan(
        jenis: 'Snake',
        jmlkaki: '4',
        type: 'Karnivora',
        img:
            'https://img.inews.co.id/media/600/files/networks/2022/08/31/71646_ular.jpg');
    daftarhewan.add(hewannya);
    hewan hewannya1 = hewan(
        jenis: 'Cat',
        jmlkaki: '4',
        type: 'Karnivora',
        img:
            'https://www.mongabay.co.id/wp-content/uploads/2023/05/kucing-hutan-768x512.jpeg');
    daftarhewan.add(hewannya1);
    hewan hewannya2 = hewan(
      jenis: 'Dog',
      jmlkaki: '4',
      type: 'Karnivora',
      img:
          'https://ae01.alicdn.com/kf/Sb06d930ac4124b019a8a11216bd06eb54.jpg_640x640Q90.jpg_.webp',
    );
    daftarhewan.add(hewannya2);
    hewan hewannya3 = hewan(
      jenis: 'Monkey',
      jmlkaki: '4',
      type: 'Karnivora',
      img:
          'https://live.staticflickr.com/3225/3156507982_a391376e64_b.jpg',
    );
    daftarhewan.add(hewannya3);
    hewan hewannya4 = hewan(
      jenis: 'bird',
      jmlkaki: '4',
      type: 'Karnivora',
      img:
          'https://t3.ftcdn.net/jpg/05/63/70/98/360_F_563709848_OdMVkfRpOZbSsy6bFBkthhJzleFxM7Cn.jpg',
    );
    daftarhewan.add(hewannya4);
    return daftarhewan;
  }
}
