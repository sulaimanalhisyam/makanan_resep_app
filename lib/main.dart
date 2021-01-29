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
        backgroundColor: Colors.lime,
        title: Text('Resep Makanan'),
      ),
      body: _PageList(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold);
final descTextStyle =
baseTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w400);
final footerTextStyle =
baseTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Ikan Goreng",
    "Kue Eskrim",
    "Mie Tek tek Indomie",
    "Mie Ayam",
    "Milk Shake Oreo",
    "Milk Shake Taro",
    "Nasi Bakar",
    "Nasi Kebuli",
    "Nasi Padang"
  ];
  List<String> subJudul = [
    "ikan goreng",
    "kue eskrim",
    "mie tek tek indomie",
    "mie ayam",
    "milk shake oreo",
    "milk shake taro",
    "nasi bakar",
    "nasi kebuli",
    "nasi padang"
  ];
  List<String> gambar = [
    "assets/images/ikangorang.jpg",
    "assets/images/kueeskrim.jpg",
    "assets/images/mietetekindomie.jpg",
    "assets/images/mieayam.jpg",
    "assets/images/milkshakeoreo.jpg",
    "assets/images/milkshaketaro.jpg",
    "assets/images/nasibakar.jpg",
    "assets/images/nasikebuli.jpg",
    "assets/images/nasipadang.jpg"
  ];

  List<String> jmlh = [
    "mohon maaf stok nya sudah habis",
    "19",
    "3",
    "90",
    "99999",
    "89",
    "69",
    "31",
    "6"
  ];

  List<String> bhn = [
    "1kg ikan \n Bumbu yang di haluskan \n 1 Ruas jahe \n 2 Ros jari kunyit \n  3 Buah bawang merah \n 3 Siung bawang putih \n 1 BTR kemiri \n 1 SDT ketumbar \n 1 SDT garam/ secukupnya",
    "250 ml Susu UHT Fullcream \n 3 sdm Susu Bubuk \n 2 sdm Tepung Maizena \n 250 gr Gula Pasir \n 250 ml Air Matang \n 1 sdm SP \n Oreo Crumb",
    "1 Bungkus Indomie Goreng \n Cabe rawit merah (sesuai selera) \n Sawi, tomat (bisa di skip) \n Bawang goreng \n 1 Butir Telur \n Kecap manis \n Lada bubuk \n Penyedap rasa \n Garam \n Minyak goreng",
    "1 kg ayam bagian dada \n 1 buah jeruk nipis \n 1 tangkai serai (geprek) \n 1 jari lengkuas (geprek) \n 3 lembar daun salam \n 1 sdm gula merah \n 750 ml air \n 3 sdm kecap manis \n 1 SDM gula pasir \n 2 sdt garam \n 1/2 sdt merica bubuk \n 1 sdt kaldu bubuk.\n Bumbu halus: \n 7 siung bawang merah \n 5 siung bawang putih \n 4 buah kemiri \n 2 cm jahe \n 2 cm kunyit \n 1 sdt ketumbar. \n Minyak ayam : \n 250 gr kulit ayam (resep asli 500 gr) \n 200 gr minyak goreng baru \n 2 siung bawang putih geprek \n Bahan pelengkap (optional) : \n 1 bungkus Mie telur, rebus \n Acar timun+wortel \n 2 tangkai daun bawang iris \n sesuai selera Sambal cabai, saus",
    "1 buah pisang (frozen lebih enak) \n 200 ml susu low fat \n 3 keping oreo \n 1 sdt vanilla",
    "5 shct Pop Ice Rasa Taro \n 1 box Silky Pudding Instan Rasa Talas (atau rasa manggo) \n Secukupnya Bubble Pearl/Boba Tea (saya sudah share cara buatnya) \n Secukupnya Es Batu \n Secukupnya Air Mineral",
    "2 porsi nasi putih (saya pake nasi sisa semalem) \n 2 potong tongkol kuah sarden, panaskan hingga kuahnya kering (lihat resep) \n Secukupnya daun pisang \n Pelengkap : sesuai stok yang ada \n Timun \n Tomat",
    "1 ekor ayam kampung tanpa kepala, kaki dan jeroan \n 500 gr beras (saya pakai beras basmati) \n 10 buah kapulaga hijau \n 5 cm kayu manis batang \n 7 butir cengkeh \n 4 butir bunga lawang/pekak \n 2 sdt merica bubuk \n 1 sachet bumbu kari instan \n 2 sdm garam \n Air untuk memasak ayam \n Bumbu halus : \n 8 siung bawang merah \n 5 siung bawang putih \n 1 sdt ketumbar \n 2 ruas jari kunyit \n 2 sdm minyak + 1 sdm margarin untuk menumis",
    "3 piring nasi dingin \n 1 batang daun bawang \n 4 buah baso sapi, opsional \n 4-5 sdm kecap manis \n 1 sdt garam, sesuaikan \n 4 siung bawang putih \n 4 siung bawang merah \n 5 buah cabe rawit \n 7 buah cabe merah \n 8 sdm minyak goreng / Secukupnya minyak goreng untuk menumis \n Bahan pelengkap \n 3 butir Telur ceplok \n 1 buah tomat, iris \n 1 buah timun, iris \n Kerupuk",
  ];

  List<String> crMSK = [
    "Bersihkan ikan lalu kerat2 \n Haluskan bumbu:lalu lumuri ikan dengan bumbu sampe dalem perutnya juga setelah itu kukus 15 menit,matikan kompor,biarkan dingin dulu,baru di goreng, atau di simpan dalam kulkas",
    "Campurkan susu uht,air matang, susu bubuk, gula pasir dan tepung maizena, aduk merata. \n Masak campuran no.1 dengan api sedang sampai mendidih dan mengental. \n Masukan 1 sdm SP kedalam adonan, mixer sampai mengembang 2-3 kali lipat, kira kira 30menit. \n Setelah mengembang, masukkan oreo crumb, aduk merata dengan spatula. \n Tuangkan dalam wadah, taburi oreo crumb diatasnya. \n Masukkan dalam freezer sampai beku dan siap disajikan. \n Selamat mencoba!",
    "Rebus indomie sampai setengah matang(jangan terlalu keras), lalu sisih kan kedalam piring \n Selagi menunggu mie matang, iris bawang merah, cabai, sawi dan tomat \n Tumisan: Siapkan penggorengan dengan 2 sendok makan minyak goreng, goreng bawang merah hingga harum. Masukan 1 butir ke dalam penggorengan lalu orak-arik serta tambahkan cabai, sawi, penyedap rasa, garam secukupnya \n Masukan mie yang sudah setengah matang ke dalam tumisan. Tambah sedikit air kira-kira 2 sendok makan lalu masukan bumbu indomie, kecap manis satu sendok teh, penyedap rasa, lada bubuk secukupnya agar bumbu bisa menyatu dengan mie. \n Setelah matang, angkat masakan dan taruh di piring saji, tambahkan irisan tomat dan juga bawang goreng di atasnya. Mie Tektek indomie siap di nikmati 😊",
    "Minyak ayam: taruh kulit ayam yang sudah di cuci bersih sebelum nya. Ke dalam teflon masak dengan api kecil sampai kulit mengeluarkan minyak tambahkan bawang putih geprek dan minyak goreng tunggu sampai harum. Angkat dan sisihkan. \n Kuah kaldu : cuci bersih ayam lalu lumuri dengan air jeruk nipis sisihkan. Masukkan 750 ml Lalu rebus ayam hingga keluar kaldunya, angkat ayam nya sisihkan. Masukkan irisan daun bawang, garam, gula, merica kaldu bubuk. Ke dalam air kaldu. Tes rasa biarkan mendidih sekali lagi. Dan matikan kompor \n Ayam kecap: tumis bumbu halus sampai harum, masukkan Daun salam, serai,lengkuas kemudian masukkan ayam tambahkan air secukupnya, masukkan kecap manis, gula merah, garam, merica, kaldu bubuk. Tes rasa dan masak sampai bumbu meresap. \n Penyajian: taruh 1 SDM minyak ayam ke dalam mangkuk, masukkan mie yang sudah di rebus, tuang di atasnya ayam kecap, masukkan sesuai selera kuah kaldu. Taburi daun bawang, bawang goreng, acar dan sambal. Sajikan.",
    "Blender susu, pisang, dan vanilla \n Tambahkan oreo tp blendernya sebentaaaaaar aja (asal hancur) \n Siap diminum deh ",
    "Jauh sebelumnya silky pudding sudah dibuat terlebih dahulu ya ummah.. simpan dalam kulkas. Saya pakai Silky Pudding Taro Instan dari Mom's Recipe. Bisa didapatkan di Supermarket-supermarket terdekat. Jika tidak ada, ummah boleh ganti merk apapun andalan (yang biasa) ummah pakai 😉 \n Siapkan 5 bh gelas besar, ambil satu gelas kemudian mulai susun topping/isian Taro Milk Tea dengan secukupnya bubble pearl, lalu 4-5 sendok silky pudding taro. Begitu rulesnya sampai 5 gelas sudah terisi topping. Note : Untuk cara buat bubble pearl/boba tea ini, bisa ummah cek resep sebelumnya. Saya sudah share, silahkan dilihat Bubble Pearl for Thai Tea \n Terakhir tinggal tuang ke dalam gelas.. Begitu terus sampai 5 gelas terisi semua. Alhamdulillah Taro Milk Tea/Bubble ala-ala Chatime siap menemani buka puasa ❣️ Nagih bikin 🙈",
    "Siapkan daun pisang secukupnya. Tata 1 porsi nasi diatasnya. Tambahkan tongkol kuah sarden diatas nasi. Bungkus dan semat dengan tusuk gigi. Lakukan hingga habis \n Panggang dengan happy call sambil dibolak balik hingga daunnya kering dan berwarna kecoklatan \n Angkat dan sajikan",
    "Cuci beras, kemudian rendam dengan air bersih sesuai takaran memasak nasi, minimal setengah jam. Sisihkan. Panaskan minyak dan margarin kemudian tumis bumbu halus sampai wangi. Setelah wangi, masukkan rempah2nya, tumis kembali. Masukkan ayam, masak hingga berubah warna. \n Setelah ayam berubah warna, beri air sampai ayam terendam, kemudian masukkan bumbu kari instan, merica dan garam. Masak hingga ayam lunak, tidak perlu sampai air habis ya, asal sudah cukup lunak karena nanti akan dimasak kembali di magic com. \n Tuang ayam beserta airnya ke dalam magic com yang berisi beras dan air tadi. Masak hingga nasi matang. Setelah nasi matang, aduk sebentar kemudian tutup kembali magic com minimal 10 menit. Nasi kebuli siap dinikmati bersama acar (kalau ada), kerupuk, sambal atau lauk lain sesuai selera 😊",
    "Siapkan bahan-bahan. Blender bahan bumbu halus. Potong2 baso dan daun bawang \n Panaskan minyak. Tumis bumbu halus hingga harum dan matang, tambahkan garam. Matikan kompor \n Masukkan nasi dingin. Tambahkan kecap daun bawang, aduk hingga merata. \n Nyalakan kembali kompor. Aduk2 sampai merata dan nasi menjadi panas. Cek rasa. Matikan kompor. Nasi goreng Padang siap dihidangkan dengan pelengkap ",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext context, int index) {
          final title = judul[index].toString();
          final subTitle = subJudul[index].toString();
          final jumlah = jmlh[index].toString();
          final bahan = bhn[index].toString();
          final cara = crMSK[index].toString();
          final img = gambar[index].toString();

          return Container(
            height: 200.0,
            padding: EdgeInsets.only(left: 8.0, top: 8.0),
            child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(img),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: topContent(title, subTitle, jumlah),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(
                                itemJudul: title,
                                itemSub: subTitle,
                                qty: jumlah,
                                itemBahan: bahan,
                                itemCara: cara,
                                itemImage: img,
                              )));
                }),
          );
        },
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: AssetImage(gambar))),
    );
  }

  topContent(String nama, String deksripsi, String stok) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            deksripsi,
            style: descTextStyle,
            textAlign: TextAlign.left,
          ),
          Container(
            height: 2.0,
            width: 80.0,
            color: Colors.black,
          ),
          Text(
            stok,
            style: footerTextStyle,
          ),
        ],
      ),
    );
  }
}
