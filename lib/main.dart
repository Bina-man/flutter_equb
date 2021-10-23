// Wellcome to Equb Challenge ...

import 'package:equb/widgets/collectedPayments/collectedPayments.dart';
import 'package:equb/widgets/duePayments/duePayments.dart';
import 'package:equb/widgets/introduction/introduction.dart';
import 'package:equb/widgets/money/money.dart';
import 'package:equb/widgets/pieChart/pieChart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/profile/profile.dart';

void main() {
  runApp(equbApp());
}

// ignore: camel_case_types
class equbApp extends StatefulWidget {
  // const equbApp({Key key}) : super(key: key);

  @override
  _equbAppState createState() => _equbAppState();
}

// ignore: camel_case_types
class _equbAppState extends State<equbApp> {
  @override
  void initState() {
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
                widgetProfile(),
                //endregion

                //region Intoduction
                widgetIntroduction(),
                //endregion

                //region wheel
                widgetPiechart(),
                //   endregion

                //  region Due Payments
                widgetPayment(),

                //  endregion

                //region Money
                widgetMoney(),
                //endregion

                //  region Collected payment
                widgetCollectedPayments()

                //  endregion
              ],
            ),
          ),
        ),
      ),
    );
  }
}
