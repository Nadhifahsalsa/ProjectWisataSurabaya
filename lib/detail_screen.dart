import 'package:flutter/material.dart';
import 'package:project2/detail_screen.dart';
import 'model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imagesAsset),
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                )
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: <Widget> [
                      Icon(Icons.calendar_today),
                      Text(place.hariBuka),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.access_alarms_outlined),
                      Text(place.JamBuka),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.attach_money_outlined),
                      Text(place.harga),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(place.Deskripsi),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  for (var galery in place.galery)
                  //Padding(
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(galery),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
