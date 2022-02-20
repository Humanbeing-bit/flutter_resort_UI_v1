import 'package:flutter/material.dart';

class RecomndPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Card(

        elevation: 5,
        child: Column(
          
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/image1.jpg'),
                  Positioned(
                    child: Icon(Icons.bookmark),
                  )
                ],
              )
            ],
          ),
        );
    });
  }
}
