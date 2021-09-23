import 'package:flutter/material.dart';
class widgetProfile extends StatefulWidget {

  @override
  _widgetProfileState createState() => _widgetProfileState();
}

class _widgetProfileState extends State<widgetProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.circle,
            size: 50,
            color: Colors.purple.shade900,
          ),
          Icon(
            Icons.bookmark_border,
            size: 40,
            color: Colors.black45,
          )
        ],
      ),
    );
  }
}
