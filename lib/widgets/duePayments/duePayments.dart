import 'package:equb/webServices/webservices.dart';
import 'package:equb/widgets/duePayments/model.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class widgetPayment extends StatefulWidget {
  // const widgetPayment({required Key key}) : super(key: key);

  @override
  _widgetPaymentState createState() => _widgetPaymentState();
}

// ignore: camel_case_types
class _widgetPaymentState extends State<widgetPayment> {
  List<Payment> payments = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPayments();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Due Payments",
          style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: payments.length,
            itemBuilder: (context, i) {
              return typePayments(
                  payments[i].name,
                  payments[i].owedAmount,
                  payments[i]
                      .dueDate
                      .difference(payments[i].createdAt));
            },
          ),
        )
      ],
    );
  }
  Widget typePayments(String name, String money,Duration daysleft) {
    var subDate = daysleft.toString().substring(0, 2);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 150,
        width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
            ),
            Container(
              height: 50,
              width: 50,
              child: Image(
                image: NetworkImage(
                    "https://dashenbanksc.com/wp-content/uploads/Dashen-Bank-Logo-Addis-Ababa-Ethiopia.png"),
              ),
            ),
            Text(
              "$name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.monetization_on_sharp,
                  color: Colors.red,
                ),
                Text(
                  'ETB 2,000',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.access_time_rounded,
                ),
                Text(
                  '$subDate Days left',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ],
            ),
            Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: TextButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: Text("Paid $money ETB to $name"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      "Pay",
                      style: TextStyle(fontSize: 17, color: Colors.red),
                    ))),
            SizedBox(
              height: 20,
              width: 400,
            )
          ],
        ),
      ),
    );
  }
  getPayments() async {
    HttpServices.getPayments().then((value) {
      setState(() {
        payments = value;
      });
    });
  }
}

