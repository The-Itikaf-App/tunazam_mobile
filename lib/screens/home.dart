import "package:flutter/material.dart";
import "package:tunazam_mobile/assets/base_style.dart";
// import "package:draggable_bottom_sheet/draggable_bottom_sheet.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Widget feedList() {
  //   return feedData
  //       .map((text) => Text(
  //             text as String,
  //             style: const TextStyle(color: Colors.blue),
  //           ))
  //       .toList();
  // }

  List<Map<String, dynamic>> feedData = [
    {
      "title": "Mainstream 1",
      "description": "Mainstream 1 description",
    },
    {
      "title": "Data Stream 1",
      "description": "Data Stream 1 description",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
          color: Styles.accentColor
        ),
        child: Column(
          // wrapper
          children: [
            Column(
              // first child
              children: [
                Text("Days to next Itikaf", style: Styles.headLine5,),
                Text("144 Days", style: Styles.headLine1,),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Activity"),
                        Text("See All"),
                      ],
                    )
                  ],
                ),
                Column(
                  children: feedData
                      .map((item) => Row(
                            children: [
                              Text(item["title"]),
                              Text(item["description"])
                            ],
                          ))
                      .toList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
