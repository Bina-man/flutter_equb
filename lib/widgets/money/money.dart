import 'package:flutter/material.dart';
class widgetMoney extends StatefulWidget {

  @override
  _widgetMoneyState createState() => _widgetMoneyState();
}

class _widgetMoneyState extends State<widgetMoney> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                  border:
                  Border.all(color: Colors.green, width: 0.5),
                  color: Colors.green,
                  borderRadius:
                  BorderRadius.all(Radius.circular(50))),
              child: TextButton(
                  onPressed: () {
                    print("Hello");
                  },
                  child: Text(
                    "Money Collected",
                    style: TextStyle(
                        fontSize: 17, color: Colors.white),
                  ))),
          Container(
            width: 180,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1),
                color: Colors.white,
                borderRadius:
                BorderRadius.all(Radius.circular(50))),
            child: TextButton(
              onPressed: () {
                print("Hello");
              },
              child: Text(
                "Money Due",
                style:
                TextStyle(fontSize: 17, color: Colors.black12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
