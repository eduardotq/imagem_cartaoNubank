import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text?.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class FrenteCartao extends StatelessWidget {
  const FrenteCartao({
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
          overflow: Overflow.clip,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                'assets/mastercard.png',
                height: 70,
              ),
              right: 10,
              top: 10,
            ),
            Positioned(
              child: Image.asset(
                'assets/nu_logo.png',
                height: 120,
                color: Colors.white,
              ),
              left: 25,
              bottom: 10,
            ),
            Positioned(
              child: Image.asset(
                'assets/chip.png',
                height: 60,
              ),
              left: 42,
              top: 75,
            ),
            Positioned(
              child: Image.asset(
                'assets/nfc.png',
                height: 26,
                color: Colors.white,
              ),
              left: 110,
              top: 90,
            ),
            Positioned(
              bottom: 20,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    color: Colors.transparent,
                    width: double.maxFinite,
                    child: TextField(
                      inputFormatters: [
                        UpperCaseTextFormatter(),
                      ],
                      decoration: InputDecoration(
                        hintText: 'SEU NOME',
                        hintStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      maxLength: 20,
                      // onTap: () => ,
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
