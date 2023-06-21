import "package:flutter/material.dart";
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
          color: Colors.green
        ),
        child: Column(
          // wrapper
          children: [
            Column(
              // first child
              children: [
                const Text("Days to next Itikaf"),
                const Text("144 Days"),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Activity"),
                        Text("See 1 All"),
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
