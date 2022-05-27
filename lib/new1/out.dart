// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Out extends StatefulWidget {
  const Out({Key? key}) : super(key: key);

  @override
  State<Out> createState() => _OutState();
}

class _OutState extends State<Out> {
  creatdialog(String x, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            content: Builder(builder: (context) {
              return Container(
                  width: MediaQuery.of(context).size.width - 350,
                  child: Text("$x"));
            }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 65, 104),
        title: Text("OUTBOUND TRIP"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 100,
              height: 50,
              child: Expanded(
                  child: Text(
                "confarm",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            onTap: () => null,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_box),
              Container(
                width: 100,
                child: ListTile(
                  title: Text("CLASSIC"),
                  subtitle: Text('2000p'),
                ),
              ),
              Icon(Icons.check_box),
              Container(
                width: 100,
                child: ListTile(
                  title: Text("CLASSIC"),
                  subtitle: Text('2000p'),
                ),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 850,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.personal_injury,
                    size: 90,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "A",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: InkWell(
                                      child: Icon(Icons.call_to_action_sharp,
                                          size: 60,
                                          color: Color.fromARGB(
                                              255, 240, 236, 236)),
                                      onTap: () =>
                                          creatdialog("A$index", context),
                                    ),
                                  ),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "B",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: InkWell(
                                      child: Icon(Icons.call_to_action_sharp,
                                          size: 60,
                                          color: Color.fromARGB(
                                              255, 240, 236, 236)),
                                      onTap: () =>
                                          creatdialog("B$index", context),
                                    ),
                                  ),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.arrow_upward_rounded),
                              Expanded(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Center(
                                      child: index + 1 == 10
                                          ? Icon(Icons.call_to_action_sharp,
                                              size: 60,
                                              color: Color.fromARGB(
                                                  255, 240, 236, 236))
                                          : Column(
                                              children: [
                                                Text(
                                                  "${index + 1}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height:
                                                      index + 1 == 9 ? 22 : 47,
                                                )
                                              ],
                                            )),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(children: [
                            Text(
                              "C",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: (index == 6)
                                      ? Icon(
                                          Icons.calendar_view_week_outlined,
                                          size: 60,
                                        )
                                      : InkWell(
                                          child: Icon(
                                              Icons.call_to_action_sharp,
                                              size: 60,
                                              color: Color.fromARGB(
                                                  255, 240, 236, 236)),
                                          onTap: () =>
                                              creatdialog("C$index", context),
                                        ),
                                ),
                                itemCount: 10,
                              ),
                            ),
                          ]),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "D",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: (index == 6)
                                        ? Container(
                                            height: 60,
                                            width: 400,
                                            child: Icon(
                                              Icons.calendar_view_week_outlined,
                                              size: 60,
                                            ),
                                          )
                                        : InkWell(
                                            child: Icon(
                                                Icons.call_to_action_sharp,
                                                size: 60,
                                                color: Color.fromARGB(
                                                    255, 240, 236, 236)),
                                            onTap: () =>
                                                creatdialog("D$index", context),
                                          ),
                                  ),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
