import 'package:flutter/material.dart';

class AtrasCartao extends StatelessWidget {
  const AtrasCartao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8.56 / 5.4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(109, 33, 119, 1),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              child: Container(
                height: 80,
                color: Colors.white,
                width: double.maxFinite,
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/cirrus.png',
                height: 70,
              ),
              right: 10,
              bottom: 10,
            ),
            Positioned(
              child: Text(
                '9999 9999 9999 9999',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              left: 25,
              bottom: 30,
            ),
          ],
        ),
      ),
    );
  }
}
