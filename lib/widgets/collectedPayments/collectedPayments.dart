import 'package:equb/webServices/webservices.dart';
import 'package:equb/widgets/collectedPayments/model.dart';
import 'package:flutter/material.dart';

class widgetCollectedPayments extends StatefulWidget {
  @override
  _widgetCollectedPaymentsState createState() =>
      _widgetCollectedPaymentsState();
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
            return collectedPayments(collectedPayment[i].frequency, collectedPayment[i].title);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }

  Widget collectedPayments(int freq, String title) {
    bool saved = false;
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    "Salary",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.monetization_on,
                    size: 40,
                    color: Colors.green,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings_backup_restore_outlined,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "7 Earnings",
                          style: TextStyle(color: Colors.black26),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on_rounded,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "ETB 2,000",
                          style: TextStyle(color: Colors.black26),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "26 Members",
                          style: TextStyle(color: Colors.black26),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Positioned(
                bottom: 2,
                right: 2,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      saved = !saved;
                    });
                    final snackBar = SnackBar(
                      content: Text("Bookmarked $title payment"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: saved? Icon(Icons.bookmark_sharp):Icon(Icons.bookmark_outline_outlined),
                ))
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
