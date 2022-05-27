import 'package:flutter/material.dart';

class extra extends StatefulWidget {
  const extra({Key? key}) : super(key: key);

  @override
  _extraState createState() => _extraState();
}

class _extraState extends State<extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add extra luggage"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          border: Border.all(color: Colors.white, width: 5),
        ),
        height: 200,
        width: 400,
        child: Stack(
          children: [
            Icon(
              Icons.luggage,
              size: 70,
            ),
            Positioned(
              left: 30,
              top: 30,
              child: Icon(
                Icons.badge,
                size: 40,
              ),
            ),
            Container(child: Text('FREE'))
          ],
        ),
      ),
    );
  }
}
