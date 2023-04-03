import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tumbuh_app/models/plant_model.dart';
import 'package:flutter_tumbuh_app/providers/favorite_plant_provider.dart';
import 'package:flutter_tumbuh_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Plant> favoritePlants = Provider.of<FavoritePlantProvider>(
      context,
      listen: false,
    ).favoritePlants;

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
                    builder: (context) => HomeScreen(),
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
                            CupertinoIcons.arrow_left,
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: ListView.builder(
                itemCount: favoritePlants.length,
                itemBuilder: (context, index) {
                  final Plant plant = favoritePlants[index];
                  return ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    title: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        plant.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Rate: ${plant.rate}',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
