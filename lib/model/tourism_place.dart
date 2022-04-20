class TourismResult {
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaces,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaces;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
    status: json["status"],
    totalResults: json["totalResults"],
    tourismPlaces: List<TourismPlace>.from((json["tourismPlaces"] as List)
      .map((x) => TourismPlace.fromJson(x))
      .where((article) =>
        article.title != null &&
        article.description != null &&
        article.openDay != null &&
        article.openTime != null &&
        article.price != null &&
        article.img != null &&
        article.location != null)),
  );
}

class TourismPlace {
  String title;
  String location;
  String img;
  String img1;
  String img2;
  String img3;
  String description;
  String openDay;
  String openTime;
  String price;

  TourismPlace({
    required this.title,
    required this.location,
    required this.img,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.description,
    required this.openDay,
    required this.openTime,
    required this.price,
  });

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
    location: json['location'],
    title: json['title'],
    description: json['description'],
    openDay: json['openDay'],
    openTime: json['openTime'],
    price: json['price'],
    img: json['img'],
    img1: json['img1'],
    img2: json['img2'],
    img3: json['img3']
  );
}