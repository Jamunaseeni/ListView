import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView_Example',
      theme: ThemeData(primaryColor: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatefulWidget {
  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  var titleitem = [
    "Success",
    "HardWork",
    "Motivation",
    "Decision",
    "Confidence",
    "Business",
    "Team Work",
  ];
  var Descripationitem = [
    "Push yourself, because no one else is going to do it for you.",
    "Your limitation-it's only your imagination.",
    "Hard Word changes the life",
    "Sometimes it's the smallest decisions that can change your life forever",
    "Confidence is the most beautiful thing you can possess",
    "A big business starts small",
    "Talent wins games, but teamwork and intelligence wins championships"
  ];

  var Imgitem = [
    "assets/1.jpg",
    "assets/2.jpeg",
    "assets/3.jpeg",
    "assets/4.jpeg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('ListView_OnClick_Event'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
          itemCount: Imgitem.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialogfun(context, titleitem[index], Imgitem[index],
                    Descripationitem[index]);
              },
              child: Card(
                  child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(Imgitem[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleitem[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 220,
                          child: Text(
                            Descripationitem[index],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
            );
          }),
    );
  }
}

showDialogfun(BuildContext context, String titleitem, String imgitem,
    String descripationitem) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imgitem,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  titleitem,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  descripationitem,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
      });
}
