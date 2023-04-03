import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tumbuh_app/models/plant_model.dart';
import 'package:flutter_tumbuh_app/providers/favorite_plant_provider.dart';
import 'package:flutter_tumbuh_app/screens/favorite_screen.dart';
import 'package:flutter_tumbuh_app/screens/plant_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Color(
                        0xFFE8F3EF,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Color(0xFF474A57),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  childAspectRatio: 3.0 / 4.0,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ),
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final Plant plant = plants[index];
                  return Container(
                    padding: EdgeInsets.all(
                      10.0,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(
                        0xFFFAFCFC,
                      ),
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    child: Consumer<FavoritePlantProvider>(
                      builder: (context, FavoritePlantProvider data, widget) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkResponse(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlantScreen(
                                      plant: plant,
                                      isFavorite:
                                          data.favoritePlants.contains(plant),
                                      onCheckboxClick: (bool? value) {
                                        setState(
                                          () {
                                            if (value != null) {
                                              data.favoritePlants.add(plant);
                                            } else {
                                              data.favoritePlants.remove(plant);
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    plant.image,
                                    width: 120.0,
                                    height: 120.0,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      plant.name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(
                                          0xFF474A57,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
