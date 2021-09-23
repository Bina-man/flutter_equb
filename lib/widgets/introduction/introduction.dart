import 'package:flutter/material.dart';
class widgetIntroduction extends StatefulWidget {

  @override
  _widgetIntroductionState createState() => _widgetIntroductionState();
}

class _widgetIntroductionState extends State<widgetIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(
                          color: Colors.black38, fontSize: 17),
                      children: [
                        TextSpan(
                            text: 'Alem ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)),
                        TextSpan(text: ' have '),
                        TextSpan(
                            text: 'ETB 40,000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green[300])),
                        TextSpan(text: '\nunpaid debt.')
                      ],
                    ),
                  ),
                ],
              )),
          Icon(Icons.arrow_drop_up, size: 30)
        ],
      ),
    );;
  }
}
