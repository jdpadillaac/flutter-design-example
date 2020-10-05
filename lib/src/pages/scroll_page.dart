import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_firstPage(), _secondPage()],
    ));
  }

  Widget _firstPage() {
    return Stack(
      children: [_backGroundColor(), _backGroundImage(), _firstPageTexts()],
    );
  }

  Widget _backGroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 217, 1.0),
    );
  }

  Widget _firstPageTexts() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          Text('11°', style: TextStyle(color: Colors.white, fontSize: 50.0)),
          Text('Miercoles',
              style: TextStyle(color: Colors.white, fontSize: 50.0)),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _backGroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _secondPage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 217, 1.0),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {},
            child: Padding(
              child: Text('Bienvendio', style: TextStyle(fontSize: 20.0)),
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
            )),
      ),
    );
  }
}
