class Trip {
  final String imgUrl;
  final String country;
  final int trips;

  Trip({this.imgUrl, this.country, this.trips});
}

final trips = [
  Trip(
    imgUrl: 'assets/images/russia.png',
    country: 'Россия',
    trips: 356
  ),
  Trip(
      imgUrl: 'assets/images/ukrain.png',
      country: 'Украина',
      trips: 258
  ),
  Trip(
      imgUrl: 'assets/images/belorussia.png',
      country: 'Белоруссия',
      trips: 198
  ),

];