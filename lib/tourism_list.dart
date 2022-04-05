import 'package:flutter/material.dart';
import 'package:travelapp/detail_screen.dart';
import 'package:travelapp/list_item.dart';
import 'package:travelapp/model/tourism_place.dart';

class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Mangrove Wonorejo',
      location: 'Wonorejo, Rungkut',
      imageAsset: ['assets/images/mangrove-thumbnail.jpg', 'assets/images/mangrove-1.jpg', 'assets/images/mangrove-2.jpg', 'assets/images/mangrove-3.jpg'],
      desc: 'Wonorejo Mangrove ecotourism has the appeal of its natural beauty. Initially, this nature conservation area was created to prevent abrasion in the eastern area of Surabaya City. Good management makes the Surabaya City government open this location to the public. This area consists of two main areas, namely jogging track and mangrove forest. In addition to exploring the mangrove forest by boat, tourists can capture the moment in beautiful photo spots, relax in gazebos and floating houses, and plant mangrove trees.',
      day: 'Everyday',
      hour: '08:00-15:00',
      price: 'Rp 25.000,-',
    ),
    TourismPlace(
      name: 'Surabaya North Quay',
      location: 'Tanjung Perak Harbour',
      imageAsset: ['assets/images/snq-thumbnail.jpg', 'assets/images/snq-1.jpg', 'assets/images/snq-2.jpg', 'assets/images/snq-3.jpg'],
      desc: 'Surabaya North Quay is a new tourist area located on the second and third floors of the magnificent Gapura Surya Nusantara Terminal building. In this place, visitors can not only enjoy beautiful views, but also luxury with international cruise ships docked. Surabaya North Quay is located at the passenger terminal of a modern ship, Gapura Surya Nusantara, Tanjung Perak Port.',
      day: 'Tuesday-Monday',
      hour: '11:30-20:00',
      price: 'Rp 10.000,-',
    ),
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl. Pemuda',
      imageAsset: ['assets/images/monkasel-thumbnail.jpg', 'assets/images/monkasel-1.jpg', 'assets/images/monkasel-2.jpg', 'assets/images/monkasel-3.jpg'],
      desc: 'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a Russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.',
      day: 'Everyday',
      hour: '08:00-16:00',
      price: 'Rp 5.000,-',
    ),
    TourismPlace(
      name: 'Klenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: ['assets/images/ksa-thumbnail.jpg', 'assets/images/ksa-1.jpg', 'assets/images/ksa-2.jpg', 'assets/images/ksa-3.jpg'],
      desc: 'Sanggar Agung Temple or Hong San Tang Temple is a pagoda in the city of Surabaya. The hallmark of this pagoda is a statue of Kwan Im as high as 20 meters which is located on the edge of the sea. This temple is dedicated to Nan Hai Guan Shi Yin Pu Sa or the Bodhisattva Kwan Im of the Laut Selatan.',
      day: 'Everyday',
      hour: '06:00-16:00',
      price: 'Rp 3.000,-',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: ['assets/images/hos-thumbnail.jpg', 'assets/images/hos-1.jpg', 'assets/images/hos-2.jpg', 'assets/images/hos-3.jpg'],
      desc: 'Open to the public since October 9, 2003, House of Sampoerna (HoS) is a Dutch colonial-style heritage building complex built in 1862 and located in the “Old Surabaya” area. This complex was initially an orphanage for boys managed by the Dutch. In 1932, it was purchased by Liem Seeng Tee then became the first Sampoerna’s production facility. House of Sampoerna complex consists of a large central auditorium, two smaller buildings in the East and West wings.',
      day: 'Sunday',
      hour: '10:00-20:00',
      price: 'Rp 50.000,-',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun Contong',
      imageAsset: ['assets/images/tgPahlawan-thumbnail.jpg', 'assets/images/tgPahlawan-1.jpg', 'assets/images/tgPahlawan-2.jpg', 'assets/images/tgPahlawan-3.jpg'],
      desc: 'The Heroes Monument (Indonesian: Tugu Pahlawan) is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on 10 November 1945. The 10 November Museum is located under the monument. This monument is 41.15 metres tall and is phallus-shaped. It was built to commemorate the events of 10 November 1945 at the Battle of Surabaya.',
      day: 'Everyday',
      hour: '05:00-18:00',
      price: 'Rp 5.000,-',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: ['assets/images/patungsby-thumbnail.jpg', 'assets/images/patungsby-1.jpg', 'assets/images/patungsby-2.jpg', 'assets/images/patungsby-3.jpg'],
      desc: 'The Sura and Baya Statue (Javanese: Suro lan Boyo Statue) is a statue that is a symbol of the city of Surabaya. This statue is located in three different areas. The first statue is at the Surabaya Zoo (KBS) and the second statue is located at Skate Park Gubeng Surabaya Street. Well, the third statue (the largest) is in Suroboyo Park. This statue consists of these two animals that inspired the name of the city of Surabaya: fish sura (shark) and baya (crocodile).',
      day: 'Everyday',
      hour: '24 Hours',
      price: 'Free',
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
            place: place,
            isDone: doneTourismPlaceList.contains(place),
            onCheckboxClick: (bool? value){
              setState(() {
                if(value!=null) {
                  value
                    ? doneTourismPlaceList.add(place)
                    : doneTourismPlaceList.remove(place);
                }
              });
            }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }

}