import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scannerapp/new1/classes/whereto.dart';

import '../recerv.dart';

class Company extends StatefulWidget {
  bool trip;
  String nameCompany;

  var date;

  var datt;
  var place1;
  var place2;
  var datt1;
  var datt2;
  Function(bool) hideCompanies;
  String image;
  Company(
      {required this.hideCompanies,
      required this.trip,
      required this.nameCompany,
      required this.date,
      required this.datt,
      required this.datt1,
      required this.datt2,
      required this.place1,
      required this.place2,
      required this.image});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            Container(
                color: Color.fromARGB(59, 155, 59, 99),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => setState(() {
                          widget.trip = !widget.trip;
                          widget.hideCompanies(widget.trip);
                        }),
                        child: Text(
                          widget.nameCompany,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(child: Image.asset(widget.image))
                  ],
                ))
          ]),
    );
  }
}

class listy extends StatefulWidget {
  var roed;
  late WhereTo whereTo;
  var service;
  var seat;
  var place1;
  var place2;
  var datt1;
  var datt2;
  listy(
      {Key? key,
      required this.whereTo,
      this.roed,
      this.service,
      this.seat,
      this.datt1,
      this.datt2,
      this.place1,
      this.place2})
      : super(key: key);

  @override
  _listyState createState() => _listyState();
}

class _listyState extends State<listy> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(color: Colors.white, width: 5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('3:10  ${widget.place1} - ${widget.place2}'),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Divider(
                    color: Colors.green,
                    thickness: 1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 200,
                  ),
                  child: RaisedButton(
                      onPressed: null,
                      child: Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.train),
                            Text('transfer'),
                            Icon(Icons.arrow_right_sharp),
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 220),
                  child: Row(
                    children: [
                      Text("200\$",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 2.5)),
                      IconButton(
                          icon: Icon(
                            Icons.add_circle,
                            size: 45,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reserv(
                                          whereTo: widget.whereTo,
                                          datt1: widget.datt1,
                                          datt2: widget.datt1,
                                          place1: widget.place1,
                                          place2: widget.place2,
                                        )));
                          })
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(' 10hr 50min'),
                    Icon(Icons.people_rounded),
                    Icon(Icons.wifi),
                    Icon(Icons.charging_station_rounded),
                    Icon(Icons.air),
                  ],
                )
              ],
            )),
        itemCount: 12,
      ),
    );
  }
}
