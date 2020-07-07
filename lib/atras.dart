import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AtrasCartao extends StatefulWidget {
  const AtrasCartao({
    Key key,
  }) : super(key: key);

  @override
  _AtrasCartaoState createState() => _AtrasCartaoState();
}

class _AtrasCartaoState extends State<AtrasCartao> {
  var maskFormatter = new MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    _controller.dispose();
    super.dispose();
  }

  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //var _novocontroller;

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
            Positioned(
              bottom: 15,
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
                        WhitelistingTextInputFormatter(
                          RegExp(
                            "[1-9' ']",
                          ),
                        ),
                        maskFormatter,
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
                      controller: _controller,
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
