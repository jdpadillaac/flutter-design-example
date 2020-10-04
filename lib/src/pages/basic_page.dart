import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _headerImage(),
        _rowWithTexts(),
        _rowButtons(),
        _bodyText()
      ],
    ));
  }

  Widget _headerImage() {
    return Image(
      image: NetworkImage(
          'https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png'),
    );
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

  Widget _rowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _rowButtonsActions(Icons.call, 'Call'),
        _rowButtonsActions(Icons.near_me, 'Route'),
        _rowButtonsActions(Icons.share, 'Share')
      ],
    );
  }

  Widget _rowButtonsActions(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _bodyText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap"),
    );
  }
}
