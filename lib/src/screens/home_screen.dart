import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
          child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('system-parking')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  int count = 0;
                  for (var i = 0; i < snapshot.data!.docs.length; i++) {
                    if (snapshot.data!.docs[i]['client']) {
                      count++;
                    }
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                  );
                } else {
                  return const Text("tes");
                }
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
                          child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('system-parking')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (c, index) {
                                        DocumentSnapshot doc =
                                            snapshot.data!.docs[index];
                                        return Container(
                                          width: width * 0.35,
                                          height: height * 0.1,
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: doc['client']
                                                  ? Color.fromARGB(
                                                      255, 87, 227, 106)
                                                  : Colors.black12,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            doc['number'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        );
                                      });
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
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
