import 'package:flutter/material.dart';
import 'package:travelapp/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset(place.imageAsset[0]),
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
                child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'LobsterTwo'
                    )
                ),
              ), // title
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Column(
                        children: <Widget> [
                          const Icon(Icons.calendar_today),
                          Text(place.day),
                        ],
                      ),
                      Column(
                        children: <Widget> [
                          const Icon(Icons.schedule),
                          Text(place.hour),
                        ],
                      ),
                      Column(
                        children: <Widget> [
                          const Icon(Icons.attach_money),
                          Text(place.price),
                        ],
                      ),
                    ],
                  )
              ), // icon
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  place.desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Oxygen'
                  ),
                ),
              ), // desc
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(place.imageAsset[1]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(place.imageAsset[2]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(place.imageAsset[3]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}