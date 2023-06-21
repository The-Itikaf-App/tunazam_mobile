import "package:flutter/material.dart";
import "package:tunazam_mobile/assets/base_style.dart";
// import "package:draggable_bottom_sheet/draggable_bottom_sheet.dart";
import "package:remixicon/remixicon.dart";

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
            color: Styles.accentColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          // w2apper
          children: [
            Column(
              children: [
                // element start
                Text(
                  "Days to next Itikaf",
                  style: Styles.headLine5,
                ),
                Text(
                  "144 Days",
                  style: Styles.headLine1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 25.0),
                      child: Column(
                        children: [
                          const Icon(
                            Remix.quill_pen_line,
                            size: 30.0,
                          ),
                          Text(
                            "Register",
                            style: Styles.headLine5,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 25.0),
                      child: Column(
                        children: [
                          const Icon(
                            Remix.error_warning_line,
                            size: 30.0,
                          ),
                          Text(
                            "Report",
                            style: Styles.headLine5,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 25.0),
                      child: Column(
                        children: [
                          const Icon(
                            Remix.feedback_line,
                            size: 30.0,
                          ),
                          Text(
                            "Feedback",
                            style: Styles.headLine5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  decoration:
                      // const BoxDecoration(borderRadius: BorderRadius.only(topLeft: 40)),
                  child: Column(children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recent Activity", style: Styles.headLine3),
                            Text("See All", style: Styles.headLine6),
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
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
