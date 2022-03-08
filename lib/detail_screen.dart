import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset('assets/images/monkasel-thumbnail.jpg'),
              Container(
                margin: EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
                child: Text(
                    "Surabaya Submarine Monument",
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        children: const <Widget> [
                          Icon(Icons.calendar_today),
                          Text('Open Everyday'),
                        ],
                      ),
                      Column(
                        children: const <Widget> [
                          Icon(Icons.schedule),
                          Text('08:00 - 16:00'),
                        ],
                      ),
                      Column(
                        children: const <Widget> [
                          Icon(Icons.attach_money),
                          Text('Rp 10.000,-'),
                        ],
                      ),
                    ],
                  )
              ), // icon
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a Russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/monkasel-1.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/monkasel-2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/monkasel-3.jpg'),
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