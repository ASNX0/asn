// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scannerapp/new1/classes/whereto.dart';
import 'package:scannerapp/new1/widget/company.dart';

// ignore: must_be_immutable
class Dates extends StatefulWidget {
  var date;

  var datt;
  var place1;
  var place2;
  var datt1;
  var datt2;
  late WhereTo whrerTo;
  Dates(
      {this.date,
      this.datt,
      this.datt1,
      this.datt2,
      this.place1,
      this.place2,
      required this.whrerTo});

  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> with SingleTickerProviderStateMixin {
  bool trip = false;
  late TabController _tabController =
      TabController(length: difference.abs(), vsync: this);
  int difference =
      0; // prints something like 2019-12-10 10:02:22.287949 print(DateFormat('EEEE').format(date)); // prints Tuesday print(DateFormat('EEEE, d MMM, yyyy').format(date)); // prints Tuesday, 10 Dec, 2019 print(DateFormat('h:mm a').format(date));

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // var inputFormat = DateFormat("yyyy-MM-dd HH:mm");
    // var inputDate = inputFormat.parse(widget.date);
    // var outoutForamt = DateFormat('dd/MM/yyyy hh:mm');
    // var outtputDate = outoutForamt.format(inputDate);
    DateTime startDate = DateTime.utc(widget.whrerTo.departing.year,
        widget.whrerTo.departing.month, widget.whrerTo.departing.day);

    DateTime endDate = DateTime.utc(widget.whrerTo.returning.year,
        widget.whrerTo.returning.month, widget.whrerTo.returning.day);

    int getDaysInbetween() {
      difference = endDate.difference(startDate).inDays;
      print("difference:${difference.abs()}");
      return difference;
    }

    final items = List<DateTime>.generate(getDaysInbetween(), (i) {
      DateTime date = startDate;
      return date.add(Duration(days: i));
    });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 65, 104),
          bottom: new TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 5),
              controller: _tabController,
              tabs: List.generate(
                  difference.abs(),
                  (index) => Container(
                        width: 200,
                        child: new Tab(
                          iconMargin: EdgeInsets.symmetric(horizontal: 300),
                          child: Align(
                            child: Text(
                                '${items[index].day}/${items[index].month}/${items[index].year}'),
                          ),
                        ),
                      ))),
        ),
        body: TabBarView(
            controller: _tabController,
            children: List.generate(
                difference.abs(),
                (index) =>
                    // Text('Start:${widget.whrerTo.current}'),
                    // Text('destination:${widget.whrerTo.destination}'),

                    // Text('departing:${widget.whrerTo.departing}'),
                    // Text('returning:${widget.whrerTo.returning}'),
                    // Text('passengers:${widget.whrerTo.passengers}'),

                    // ignore: deprecated_member_use
                    trip == false
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Company(
                                      hideCompanies: (x) {
                                        setState(() {
                                          trip = x;
                                        });
                                      },
                                      image: 'assets/altawfeek.png',
                                      trip: trip,
                                      nameCompany: 'TawfeekCompany',
                                      date: widget.date,
                                      datt: widget.datt,
                                      datt1: widget.datt1,
                                      datt2: widget.datt2,
                                      place1: widget.place1,
                                      place2: widget.place2),
                                ),
                                Expanded(
                                  child: Company(
                                      hideCompanies: (x) {
                                        trip = x;
                                      },
                                      image: 'assets/alshahbaa.png',
                                      trip: trip,
                                      nameCompany: 'ShahbaaCompany',
                                      date: widget.date,
                                      datt: widget.datt,
                                      datt1: widget.datt1,
                                      datt2: widget.datt2,
                                      place1: widget.place1,
                                      place2: widget.place2),
                                ),
                                Expanded(
                                  child: Company(
                                      hideCompanies: (x) {
                                        trip = x;
                                      },
                                      image: 'assets/alakhawia.png',
                                      trip: trip,
                                      nameCompany: 'AkhwiaCompany',
                                      date: widget.date,
                                      datt: widget.datt,
                                      datt1: widget.datt1,
                                      datt2: widget.datt2,
                                      place1: widget.place1,
                                      place2: widget.place2),
                                ),
                              ],
                            ),
                          )
                        : listy(
                            whereTo: widget.whrerTo,
                            datt1: widget.date,
                            datt2: widget.datt,
                            place1: widget.place1,
                            place2: widget.place2,
                          ))));
  }
}

// ignore: must_be_immutable

formattedDate(timestamp) {
  var dateFromTimeStamp =
      DateTime.fromMillisecondsSinceEpoch(timestamp.seconds * 1000);
  print("${DateFormat('dd-MM-yyyy hh:mm a').format(dateFromTimeStamp)}");
}
