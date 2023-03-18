import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/detail_screen.dart';
import 'package:project2/list_item.dart';
import 'model/tourism_place.dart';

class TourismPlaceList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismPlaceList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismPlaceList> {
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        nama: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imagesAsset: 'assets/images/submarine.jpg',
        Deskripsi: 'Surabaya Submarine Monument or as known as Monumen Kapal Selam (Monkasel) is the largest submarine monument in Asia, which was built in riverside of Kalimas, Surabaya. This monument was built by idea of Navy Veterans.',
        JamBuka: '08.00 - 22.00 WIB',
        harga: '15.000',
        hariBuka: 'Setiap Hari',
        galery: ['assets/images/submarine.jpg','assets/images/submarine1.jpg','assets/images/submarine2.jpg','assets/images/submarine3.jpg'],
    ),
    TourismPlace(
      nama: 'Klenteng Sanggar Agung',
      location: 'Kenjeran',
      imagesAsset: 'assets/images/klenteng.jpg',
      Deskripsi: 'Klenteng Sanggar Agung juga dikenal dengan sebutan KLenteng Hong San Tang. Didirikan pada tahun 1999 dan berfungsi sebagai tempat ibadah umat Tri Dharma. Klenteng inimemiliki ciri khas yaitu terdapat patung Dewi Kwan Im setinggi 20 meter dan berada di tepi laut.',
      JamBuka: '08.00 - 16.00 WIB',
      harga: '10.000',
      hariBuka: 'Setiap Hari',
      galery: ['assets/images/klenteng.jpg','assets/images/klenteng1.jpg','assets/images/klenteng2.jpg','assets/images/klenteng3.jpg'],
    ),
    TourismPlace(
      nama: 'House Of Sampoerna',
      location: 'Krembang Utara',
      imagesAsset: 'assets/images/sampoerna.jpg',
      Deskripsi: 'Museum rokok ini dulunya adalah pabrik rokok pertama Sampoerna. Saat ini bangunan bergaya kolonial Belanda yang dibangun sekitar tahun 1862 termasuk dalam situs bersejarah yang dilestarikan di Surabaya. Pada masa Belanda, bangunan ini adalah panti asuhan yang dikelola Belanda. Kemudian pada tahun 1932 dibeli oleh Liem Seeng Tee yang menjadi pendiri Sampoerna dan menjadi tempat pertama produksi rokok Sampoerna. Saat ini, bangunan ini termasuk dalam situs sejarah yang dilestarikan di Surabaya.',
      JamBuka: '08.00 - 18.00 WIB',
      harga: '15.000',
      hariBuka: 'Setiap Hari',
      galery: ['assets/images/sampoerna.jpg','assets/images/sampoerna1.jpg','assets/images/sampoerna2.jpg','assets/images/sampoerna3.jpg'],
    ),
    TourismPlace(
      nama: 'Tugu Pahlawan',
      location: 'Alun-Alun Contong',
      imagesAsset: 'assets/images/pahlawan.jpg',
      Deskripsi: 'Tugu Pahlawan didirikan pada tanggal 10 November 1951 dan diresmikan pada tanggal 10 November 1952 oleh Presiden RI, Ir. Soekarno, dengan tujuan untuk mengenang sejarah perjuangan para pahlawan kemerdekaan bangsa Indonesia dalam pertempuran 10 Nopember 1945 di Surabaya. Pada tanggal 10 November 1991 mulai dibangun Museum Sepuluh November dengan luas 1366 m2 pada kedalaman 7 meter di bawah permukaan tanah di areal Kompleks Tugu Pahlawan, Jl. Pahlawan-Surabaya yang bertujuan untuk mendukung keberadaan Tugu Pahlawan serta melengkapi fasilitas sejarahnya dan diresmikan pada tanggal 19 februari 2000 oleh Presiden RI, KH. Abdul Rahman Wachid.',
      JamBuka: '08.00 - 16.00 WIB',
      harga: '20.000',
      hariBuka: 'Setiap Hari',
      galery: ['assets/images/pahlawan.jpg','assets/images/pahlawan1.jpg','assets/images/pahlawan2.jpg','assets/images/pahlawan3.jpg'],
    ),
    TourismPlace(
      nama: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imagesAsset: 'assets/images/sby.jpg',
      Deskripsi: 'Patung Sura dan Baya (Jawa: Patung Suro lan Boyo) adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura (hiu) dan baya (buaya). Patung ini dibangun pada tahun 1988oleh seorang pemahan yang bernama Sigit Margono dengan bahan semen dan di arsitek ii oleh Sutomo kusnadi patung ini bertahan sampai sekarang, terlepas dari kisah dahulu patung ini menjadi lambang keberanian para pemuda kota Surabaya alam mempertahankan daerah kekuasaannya',
      JamBuka: '08.00 - 21.00 WIB',
      harga: 'Gratis',
      hariBuka: 'Setiap Hari',
      galery: ['assets/images/sby.jpg','assets/images/sby1.jpg','assets/images/sby2.jpg','assets/images/sby3.jpg'],
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(place: place);
              }));
            },
            child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value){
                setState(() {
                  if(value!=null){
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              },
            ),
          );
        },
      itemCount: tourismPlaceList.length,
    );
  }
}

