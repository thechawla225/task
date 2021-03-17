import 'package:flutter/material.dart';

class FirstImage extends StatefulWidget {
  @override
  _FirstImageState createState() => _FirstImageState();
}

class _FirstImageState extends State<FirstImage> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 20),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      child: FittedBox(
                        child: Image.asset('assets/ocean.png'),
                        fit: BoxFit.fill,
                      ),
                      width: 340.0,
                      height: 200,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          offset: Offset(0, 20),
                          color: Colors.black.withOpacity(0.6),
                          spreadRadius: 50.0,
                        )
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300.0, top: 15),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1)),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ocean at Algarve",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        Text(
                          "Enjoy view over the sky blue ocean from you room",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Container(
                            child: Column(children: [
                              Text(
                                "18",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Aug",
                                style: TextStyle(fontSize: 15),
                              ),
                            ]),
                            width: 45,
                            height: 43,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8.0,
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: -2.0,
                                    offset: Offset(0.0, 5),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]);
  }
}