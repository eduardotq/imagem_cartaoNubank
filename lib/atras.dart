import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AtrasCartao extends StatefulWidget {
  const AtrasCartao({
    Key key,
  }) : super(key: key);

  @override
  _AtrasCartaoState createState() => _AtrasCartaoState();
}

class _AtrasCartaoState extends State<AtrasCartao> {
  @override
  Widget build(BuildContext context) {
    /*  var _controller = TextEditingController();
    var _novocontroller; */

    return AspectRatio(
      aspectRatio: 8.56 / 5.4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(109, 33, 119, 1),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 80,
              color: Colors.grey[400],
              width: double.maxFinite,
            ),
            Positioned(
              child: Image.asset(
                'assets/cirrus.png',
                height: 70,
              ),
              right: 10,
              bottom: 10,
            ),
            /*  Positioned(
              child: Text(
                '9999 9999 9999 9999',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),TextInputFormatter
              left: 25,
              bottom: 30,
            ), */
            Positioned(
              bottom: -5,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    color: Colors.transparent,
                    width: double.maxFinite,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        WhitelistingTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        hintText: 'NÚMERO DO CARTÃO',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      maxLength: 16,
                      // controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* String mask(TextEditingController controller) {
  var mask = [controller.text];

  if (mask.length >= 16) {
    mask.insert(4, '');

    mask.insert(9, '');

    mask.insert(14, '');
  }

  controller.text = mask.toString();

  return controller.text;
} */
