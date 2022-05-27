import 'package:flutter/material.dart';
import 'package:scannerapp/new1/classes/whereto.dart';
import 'package:scannerapp/new1/out.dart';
import 'package:scannerapp/new1/retu.dart';

// ignore: unused_import

class seat extends StatefulWidget {
  var place1;
  var place2;
  var datt1;
  var datt2;
  late WhereTo whereTo;

  // ignore: use_key_in_widget_constructors
  seat(
    this.whereTo,
    this.datt1,
    this.datt2,
    this.place1,
    this.place2,
  );

  @override
  _seatState createState() => _seatState();
}

class _seatState extends State<seat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 228, 228),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 65, 104),
          title: Text('Seat Reservation'),
        ),
        body: ListView(children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "OUTBOUND TRIP",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
            height: 300,
            width: 100,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Text(
                    '${widget.whereTo.departing.toString().split(' ')[0]}',
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('${widget.whereTo.current}',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            height: 80,
                            width: 2.5,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.yellow,
                          ),
                          Container(
                            child: Text('${widget.whereTo.destination}',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),

                      IconButton(
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Out()),
                              ),
                          icon: Icon(Icons.arrow_forward_ios)),

                      // ignore: deprecated_member_use
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "RETURN TRIP",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
            height: 300,
            width: 100,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Text(
                    '${widget.whereTo.returning.toString().split(' ')[0]}',
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('${widget.whereTo.destination}',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            height: 80,
                            width: 2.5,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.yellow,
                          ),
                          Container(
                            child: Text('${widget.whereTo.current}',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => retu()),
                              ),
                          icon: Icon(Icons.arrow_forward_ios)),
                      // ignore: deprecated_member_use
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
