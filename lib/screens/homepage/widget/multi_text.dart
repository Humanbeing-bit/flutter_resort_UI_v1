import 'package:flutter/material.dart';

class MultiTextWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 30,bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('For You',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold 
                ),
                ),
                SizedBox(height: 10,),
                Text('our Recomendtaion Place to Stay',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
                )
              ],
            ),
            Text('See All',
             style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold 
                ),
            
            )
          ],
        ),
      ),
    );
  }
}