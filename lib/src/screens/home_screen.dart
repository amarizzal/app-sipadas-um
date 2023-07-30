import 'package:app_sipadas_um/src/model/parking_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fb = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    final ref = fb.ref().child('SystemParkir');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var count = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sipadas UM",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        child: Row(),
        elevation: 30,
        notchMargin: 5.0,
        height: 60,
        // shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: FirebaseAnimatedList(
              reverse: true,
              query: ref,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                Map student = snapshot.value as Map;
                student['key'] = snapshot.key;

                if (student['number'] == 1) {
                  count = 0;
                }
                if (student['portal']['status'] == 1) {
                  // print(student['portal']);
                  count++;
                }
                return Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          count.toString(),
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "/",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "10",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                );
              }),
          shape: CircleBorder(),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
            height: height * 0.9,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Sistem Parkir Cerdas",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Center(
                  child: Text(
                    "Universitas Negeri Malang",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 270,
                          width: width * 0.37,
                          child: FirebaseAnimatedList(
                              query: ref,
                              itemBuilder: (BuildContext context,
                                  DataSnapshot snapshot,
                                  Animation<double> animation,
                                  int index) {
                                Map student = snapshot.value as Map;
                                print(student['client']);
                                student['key'] = snapshot
                                    .key; //created a class called message and added all messages in a List of class message
                                return listParking(
                                    width: width,
                                    height: height,
                                    student: student);
                              }),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/images/arrow.png"),
                    ),
                    Column(
                      children: [
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "10",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "9",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "8",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "7",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: width * 0.35,
                          height: height * 0.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "6",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class listParking extends StatelessWidget {
  const listParking({
    super.key,
    required this.width,
    required this.height,
    required this.student,
  });

  final double width;
  final double height;
  final Map student;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.35,
      height: height * 0.1,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: student['client'] == 1
              ? Color.fromARGB(255, 86, 224, 86)
              : Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(
          child: Text(
        student['number'].toString(),
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
