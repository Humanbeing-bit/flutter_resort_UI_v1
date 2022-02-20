import 'package:flutter/material.dart';
import 'package:flutter_resort/model/location_model.dart';

class LocationItem extends StatelessWidget {
  final Locations locations;
  LocationItem(this.locations);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  image: DecorationImage(
                    image: AssetImage(locations.image),
                    scale: 0.2,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 15,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.brown),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  locations.title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container( 
            padding: EdgeInsets.only(left: 20,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.pinkAccent,
                        ),
                        Text(locations.place),
                      ],
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(locations.rating.toString())
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${locations.cost} per Night",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
