class Plant {
  final int id;
  final String image;
  final String size;
  final String name;
  final double rate;
  final String description;

  Plant({
    required this.id,
    required this.image,
    required this.size,
    required this.name,
    required this.rate,
    required this.description,
  });
}

final List<Plant> plants = [
  Plant(
    id: 1,
    image: 'assets/images/monstera-minima.png',
    size: 'Small - Medium',
    name: 'Monstera Minima',
    rate: 16.95,
    description:
        'A fast-growing vining plant, the Monstera Minima is sought after for its unique fenestrated leaves. She resembles her bigger sister, the Monstera Deliciosa – her leaves are similarly split with “windows,” but stay quite much smaller. This plant is easy to care for and loves to climb up a moss pole. It’s easy to propagate from stem tip cuttings and thrives in bright indirect light.',
  ),
  Plant(
    id: 2,
    image: 'assets/images/dieffenbachia-compacta.png',
    size: 'Succulent',
    name: 'Dieffenbachia Compacta',
    rate: 12.95,
    description:
        'The large and showy Dieffenbachia can be the perfect living decoration for the home or office. The Dieffenbachia is relatively easy to care for as long as you give her a nice spot with plenty of bright, indirect light (fluorescent light works as well) and a weekly watering session.',
  ),
  Plant(
    id: 3,
    image: 'assets/images/coffea-arabica.png',
    size: 'Succulent',
    name: 'Coffea Arabica',
    rate: 12.95,
    description:
        'Coffee beans grow on an attractive little plant with glossy green leaves and a compact growth habit. Native to Ethiopia, the coffee plant (Coffea Arabica) will flower in the spring with small white flowers and then bear half-inch berries that gradually darken from green to blackish pods. Each of these fruits contains two seeds, which eventually become the coffee beans you use to brew coffee. Isn’t that cool? Add this little green friend to your office to keep the spirits high and the energy up.',
  ),
  Plant(
    id: 4,
    image: 'assets/images/ctenanthe-amagris.png',
    size: 'Succulent',
    name: 'Ctenanthe Amagris',
    rate: 16.95,
    description:
        'A slow-growing plant, with pale grey-green, oval leaves, and dramatic dark green curving stripes. The leaves are wonderfully offset by a deep purple stem and leaf underside. The Ctenanthe Amagris is one of the easier Prayer Plants to take care of – she doesn’t mind lower light conditions as long as she gets enough water and humidity. Like other prayer plants, the Ctenanthe Amagris leaves close upwards at night. Combine her with a Maranta or Calathea for an authentic indoor rainforest vibe.',
  ),
];
