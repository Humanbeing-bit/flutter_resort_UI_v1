import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 250,
            padding: EdgeInsets.only(left: 25, right: double.infinity),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(18),
                  hintText: 'Search what you want...',
                  icon: Icon(Icons.search),
                  iconColor: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.settings_input_component),
            ),
          ),
        ],
      ),
    );
  }
}
