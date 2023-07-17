import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "2",
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
          shape: CircleBorder(),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
            height: height * 0.8,
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
                            "1",
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
                            "2",
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
                              color: Color.fromARGB(255, 87, 227, 106),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                              child: Text(
                            "3",
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
                              color: Color.fromARGB(255, 87, 227, 106),
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
