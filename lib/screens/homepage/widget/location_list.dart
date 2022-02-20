import 'package:flutter/material.dart';
import 'package:flutter_resort/model/location_model.dart';
import 'package:flutter_resort/screens/homepage/widget/location_item.dart';

class LocationList extends StatelessWidget {
  var locationlist = Locations.generatedLocation();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 280,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.hardEdge,
        
        itemBuilder: (_, index)=> LocationItem(locationlist[index]), 
        separatorBuilder: (_, index )=> SizedBox(width: 10,), 
        itemCount: locationlist.length),
    );
  }
}