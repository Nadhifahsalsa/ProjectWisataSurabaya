import 'package:flutter/material.dart';
import 'package:project2/done_tourism_list.dart';
import 'package:project2/main.dart';
import 'package:project2/list_item.dart';
import 'package:project2/model/tourism_place.dart';
import 'package:project2/tourism_list.dart';
import 'detail_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}): super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                return DoneTourismList(
                    doneTourismPlaceList: doneTourismPlaceList
                );
              }),);
            },
          )
        ],
      ),
      body: TourismPlaceList(doneTourismPlaceList: doneTourismPlaceList),
    );
  }
}