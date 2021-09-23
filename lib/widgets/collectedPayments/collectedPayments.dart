import 'package:equb/webServices/webservices.dart';
import 'package:equb/widgets/collectedPayments/model.dart';
import 'package:flutter/material.dart';
class widgetCollectedPayments extends StatefulWidget {
  @override
  _widgetCollectedPaymentsState createState() => _widgetCollectedPaymentsState();
}

class _widgetCollectedPaymentsState extends State<widgetCollectedPayments> {
  List<CollectedPayment> collectedPayment = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCollectedPayments();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 310,
        width: 510,
        child: GridView.builder(
          itemCount: collectedPayment.length,
          itemBuilder: (context, i) {
            return collectedPayments(collectedPayment[i].frequency);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }
  Widget collectedPayments(int freq) {
    String frequency = "";
    if (freq % 2 == 0) {
      frequency = "monthly";
    } else if (freq % 3 == 0) {
      frequency = "weekly";
    } else {
      frequency = "annual";
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Salary"),
              leading: Icon(
                Icons.monetization_on,
                size: 40,
              ),
              subtitle: Row(
                children: [
                  Icon(
                    // Icons.access_time_filled_rounded,
                    Icons.access_time_outlined,
                    color: Colors.black26,
                  ),
                  Text("$frequency"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.settings_backup_restore_outlined),
                Text("7 Earnings")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.monetization_on_rounded),
                Text("ETB 2,000")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.people),
                Text("26 Members"),
              ],
            ),
          ],
        ),
      ),
    );
  }
  getCollectedPayments() async {
    HttpServices.getCollectedPayments().then((value) {
      setState(() {
        collectedPayment = value;
      });
    });

  }
}
