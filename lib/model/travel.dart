class Travel {
  String name;
  String location;
  String url;
  String price;
  String overview;
  String itenary;

  Travel(this.name, this.location, this.url, this.price, this.overview,
      this.itenary);

  static List<Travel> generateTravelBlog() {
    return [
      Travel(
        'Evrenin Sonundaki Restoran',
        'Evrenin Sonunda',
        'assets/images/evreninsonundakirestoran.jpg',
        'Günlük 200TL!',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
      Travel(
        'Venüs İtalyan Restoranı',
        'Venüs',
        'assets/images/venusdekiitalyanrestoran.jpg',
        'Günlük 300TL!',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat ",
      ),
      Travel(
        'Satürn',
        'Satürn',
        'assets/images/saturn.jpg',
        'Günlük 400TL!',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
      Travel(
        'Sagittarius Takımyıldızı',
        'Samanyolu Galaksisi',
        'assets/images/sagittariustakimyildizi.jpg',
        'Günlük 500TL!',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel(
        'Jupiter',
        'Jupiter',
        'assets/images/jupiter.jpg',
        'Günlük 600TL!',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
      Travel(
        'ISS Uzay İstasyonu',
        'Uzay',
        'assets/images/iss.jpg',
        'Günlük 500TL',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
      Travel(
        'Plüton',
        'Plüton',
        'assets/images/pluton.jpg',
        'Günlük 400TL',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
      Travel(
        'Marstaki Kasaba',
        'Mars',
        'assets/images/mars.jpg',
        'Günlük 100TL!',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",),
    ];
  }

  static List<Travel> activitiesBlog() {
    return [
      Travel(
          'Anıtkabir',
          'Ankara',
          'assets/images/anitkabir.jpg',
          'Günlük 200 TL!',
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
      Travel(
        'Vialand',
        'İstanbul',
        'assets/images/vialand.jpg',
        'Günlük 5000TL!',
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      ),
    ];
  }
}
