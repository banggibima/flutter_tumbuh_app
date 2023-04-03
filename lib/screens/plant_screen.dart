import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tumbuh_app/models/plant_model.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  _PlantScreenState createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 40.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(
                  0xFFE8F3EF,
                ),
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Image.asset(
                '${widget.plant.image}',
                width: 20.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
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
                      child: Icon(
                        _isFavorite
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: Color(
                          0xFF6BA593,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: Text(
              '${widget.plant.name}',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
                color: Color(
                  0xFF474A57,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(
              0.0,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40.0,
                      ),
                      child: Text(
                        'Rate',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xFF474A57,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40.0,
                      ),
                      child: Text(
                        '${widget.plant.rate}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xFF6BA593,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        'Ukuran',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xFF474A57,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        '${widget.plant.size}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xFF6BA593,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Text(
                  '${widget.plant.description}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
