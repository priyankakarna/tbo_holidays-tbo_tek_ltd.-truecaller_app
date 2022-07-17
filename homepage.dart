import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  //List<String> images;
  //Homepage(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                width: 380,
                height: 50,
                margin: const EdgeInsets.all(16),
                color: Colors.white,
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                        icon: Icon(
                      Icons.search,
                      size: 20,
                    )),
                  ),
                )),
          )),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.blue,
                child: Text('P',
                    style: TextStyle(fontSize: 20, color: Colors.red))),
          ),
          Text('\t\t\tPriyanka',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ]),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 90),
                child: Icon(Icons.call, size: 25, color: Colors.green)),
            Text('\t\t\tOutgoing call',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.green,
                child: Text('A',
                    style: TextStyle(fontSize: 20, color: Colors.red))),
          ),
          Text('\t\t\t\n\t\t\tAakriti',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ]),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 90),
                child: Icon(Icons.call, size: 25, color: Colors.green)),
            Text('\t\t\tOutgoing call',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.red,
                child: Text('A',
                    style: TextStyle(fontSize: 20, color: Colors.green))),
          ),
          Text('\t\t\t\n\t\t\tAbhishek',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ]),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 90),
                child: Icon(Icons.call, size: 25, color: Colors.green)),
            Text('\t\t\tOutgoing call',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.purple,
                child: Text('M',
                    style: TextStyle(fontSize: 20, color: Colors.green))),
          ),
          Text('\t\t\t\n\t\t\tMeera',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ]),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 90),
                child: Icon(Icons.call, size: 25, color: Colors.green)),
            Text('\t\t\tOutgoing call',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.purple,
                child: Text('B',
                    style: TextStyle(fontSize: 20, color: Colors.green))),
          ),
          Text('\t\t\t\n\t\t\tBrijendra Lal Karna',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ]),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 90),
                child: Icon(Icons.call, size: 25, color: Colors.green)),
            Text('\t\t\tOutgoing call',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ],
        )
      ])
    ]);
  }
}
