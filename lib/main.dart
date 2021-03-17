import 'package:flutter/material.dart';
import 'package:task/first_image.dart';
import 'package:task/second_image.dart';
import 'list_items.dart';

void main() {
  runApp(Task());
}

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int selectedindex = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Locations",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Stack(children: [
                      Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  offset: Offset(-6, 6),
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: -1.0,
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      'https://picsum.photos/250?image=9')))),
                      Padding(
                        padding: EdgeInsets.only(top: 0, left: 37),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 45.0,
                  child: Stack(children: [
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedindex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.blue,
                                              width: 3.5,
                                              style: selectedindex == index
                                                  ? BorderStyle.solid
                                                  : BorderStyle.none))),
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    listItems[index].name,
                                    style: TextStyle(
                                        color: selectedindex == index
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 16.0,
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        left: 20,
                      ),
                      child: Container(
                        width: 345,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 2.0,
                                    style: BorderStyle.solid))),
                        margin: EdgeInsets.only(right: 10.0),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            FirstImage(),
            SizedBox(height: 15),
            SecondImage(),
          ]),
        )));
  }
}
