import 'package:flutter/material.dart';
import 'package:flutter_resort/screens/homepage/widget/Top_text.dart';
import 'package:flutter_resort/screens/homepage/widget/app_bar.dart';
import 'package:flutter_resort/screens/homepage/widget/icon_button.dart';
import 'package:flutter_resort/screens/homepage/widget/location_list.dart';
import 'package:flutter_resort/screens/homepage/widget/multi_text.dart';
import 'package:flutter_resort/screens/homepage/widget/recommend_places.dart';
import 'package:flutter_resort/screens/homepage/widget/search_box.dart';
import 'package:flutter_resort/screens/homepage/widget/search_input.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 80, right: 80),
            child: TopText('Find Your Desired Hotel'),
          ),
          // SearchBox(),
          SearchInput(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TopText('Catagories'),
          ),
          SizedBox(height: 10,),
         SelectedLocations(),
        MultiTextWidget(),
        LocationList(),
        ],
      ),
    );
  }
}
