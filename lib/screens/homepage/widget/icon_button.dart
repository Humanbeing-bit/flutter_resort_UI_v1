import 'package:flutter/material.dart';

class SelectedLocations extends StatefulWidget {
  @override
  _SelectedLocationsState createState() => _SelectedLocationsState();
}

class _SelectedLocationsState extends State<SelectedLocations> {
  final locations = <String>['Hotels', 'Transport', 'Foods', 'Home'];
  final icons = [Icons.bed, Icons.flight, Icons.no_food_outlined, Icons.home];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 60,),
      child: ListView.separated(
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: selected == index
                              ? Colors.black
                              : Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)
                              ),
                      child: Column(
                        children: [
                          Icon(
                            icons[index],
                            size: 20,
                            color: selected == index ?Colors.white : Colors.black,
                          ),
                          Text(locations[index],
                          style: TextStyle(
                            color: selected == index ?Colors.white : Colors.black,
                          ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
           width:10 ,
              ),
          itemCount: locations.length),
    );
  }
}
