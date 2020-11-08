import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makanan_resep_app/DetailPage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Resep Makanan'),
      ),
      body: _PageList(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');

final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);

final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);

final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageListState createState() => __PageListState();
}

class __PageListState extends State<_PageList> {
  List<String> namaResep = [
    'Ikan Goreng',
    'Kue Es Skirm',
    'Nasi Bakar',
    'Nasi Padang',
    'Nasi Kucing',
    'Milkshake Taro',
    'Milkshake Oreo',
    'mie ayam',
    'mie aceh',
    'nasi kebuli'
  ];
  List<String> descResep = [
    'makanan enak yang di goreng',
    'makanan enak saat cuaca sedang panas',
    'makanan enak yang di bakar',
    'makanan yag di sajikan dengan kuah(apa aja), sambal, dan rendang menjadi satu di mulut anda',
    'nasi yang berbentuk kucing dengan lauk yaitu daging ayam dan sambal',
    'milkshake taro yang rasanya terasa di lidah dak kalo diminum saat panas enak nya nampol',
    'milkshake oreo yang dibuat dari es krim dan oreo di campur, anda akan ketagihan',
    'mie yang di sajikan denga minyak dan bumbu rahasi, dan dia aduk dengan mie, rasanya pengen lagi dan lagi',
    'mie acaeh yang di sajikan dengan udang dan rasa yang khas saat di mulut seperti suasana di aceh',
    'nasi ini dui sajikan dengan daging ayam maupun daging kambing dan bersala dari arab'
  ];
  List<String> gambar = [
    'assets/image/ikangoreng.jpg',

    'assets/image/kueeskrim.jpg',

    'assets/image/nasibakar.jpg',

    'assets/image/nasipadang.jpg',

    'assets/image/nasikucing.jpg',

    'assets/image/milkshaketaro.jpg',

    'assets/image/milkshakeoreo.jpg',

    'assets/image/mieayam.jpg',

    'assets/image/mieaceh.jpg',

    'assets/image/nasikebuli.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: namaResep.length,
          itemBuilder: (BuildContext contex, int index) {
            final title = namaResep[index].toString();
            final subtitle = descResep[index].toString();
            final img = gambar[index].toString();
            return Container(
              height: 200.0,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      backgroundImage(img),
                      Container(
                        child: topContent(
                          title,
                          subtitle,
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                itemJudul: title,
                                itemSub: subtitle,
                                itemImage: img)));
                  }),
            );
          }),
    );
  }

  backgroundImage(String Gambar) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: AssetImage(Gambar))),
    );
  }

  topContent(
    String title,
    String subTitle,
  ) {
    return new Container(
      height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            title,
            style: bigHeaderTextStyle,
          ),
          Text(
            subTitle,
            style: descTextStyle,
          ),
        ],
      ),
    );
  }
}
