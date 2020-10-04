import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png'),
        ),
        _rowWithTexts()
      ],
    ));
  }

  Widget _rowWithTexts() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Imagen bonita',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text('Es una imagen de paisaje',
                    style: TextStyle(fontSize: 18.0, color: Colors.grey))
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
