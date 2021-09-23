import 'package:equb/widgets/introduction/introduction.dart';
import 'package:equb/widgets/pieChart/pieChart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/profile/profile.dart';

void main() {
  runApp(equbApp());
}

class equbApp extends StatefulWidget {
  // const equbApp({Key key}) : super(key: key);

  @override
  _equbAppState createState() => _equbAppState();
}

class _equbAppState extends State<equbApp> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: ListView(
              children: [
                //region Profile
                widgetProfile(),
                //endregion

                //region Intoduction
                widgetIntroduction(),
                //endregion

                //region wheel
                widgetPiechart(),
                //   endregion





              ],
            ),
          ),
        ),
      ),
    );
  }

}






