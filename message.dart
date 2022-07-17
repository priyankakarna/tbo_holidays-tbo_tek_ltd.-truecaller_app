import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart';

int index = 0;

class Json extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return JsonState();
  }
}

class JsonState extends State<Json> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message')),
      backgroundColor: Colors.yellow,
      body: Column(children: [
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
          // child: Container(
          //     width: 150,
          //     height: 60,
          //     color: Colors.white,
          //     margin: EdgeInsets.only(top: 25, left: 25, right: 25),
          //     // decoration: BoxDecoration(
          //     //   //border: Border.all(width: 2, color: Colors.grey),
          //     //   color: Colors.white,
          //     //   shape: BoxShape.rectangle,
          //     // ),
          //     child: Padding(
          //         padding: EdgeInsets.all(16.0),
          //         child: TextField(
          //           style: TextStyle(color: Colors.purple, fontSize: 20),
          //           controller: TextEditingController(),
          //           cursorColor: Colors.black,
          //           keyboardAppearance: Brightness.dark,
          //           keyboardType: TextInputType.name,
          //           decoration: InputDecoration(
          //             fillColor: ,
          //             constraints: BoxConstraints.expand(),
          //             icon: Icon(Icons.search,
          //                 size: 25, color: Colors.black),
          //           ),
          //         )
          // Text('Search Messages',
          //     style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 15,
          //         fontWeight: FontWeight.bold)),
        ]),
        Flexible(
            flex: 17,
            child: FutureBuilder(
              //future: Network('https://jsonplaceholder.typicode.com/comments').fetch(),
              // initialData:
              //     Text('Loading', style: TextStyle(fontSize: 30, color: Colors.white)),
              builder: (context, AsyncSnapshot snapshot) {
                //List<Email> email_data = snapshot.data;
                if (snapshot.connectionState == ConnectionState.done) {
                  List<Email> email_data = snapshot.data;

                  // List<Email> email_data = snapshot.data;
                  return ListItems(context, snapshot.data);
                }
                return Center(
                  child: CircularProgressIndicator(
                    semanticsLabel: 'Wait',
                  ),
                );
              },
              future: Network('https://jsonplaceholder.typicode.com/comments')
                  .fetch(),
            ))
      ]),
    );
  }

  Widget ListItems(context, email_data) {
    return Container(
        child: ListView.separated(
            itemCount: email_data.length,
            separatorBuilder: (context, index) => Divider(
                  height: 5,
                  thickness: 2,
                ),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    title: Text('${email_data[index].name}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('${email_data[index].body}',
                        style: TextStyle(fontSize: 18, color: Colors.green)),
                    leading: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.lightBlue,
                            child: Text('${email_data[index].id}',
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 14)))
                      ],
                    ),
                  ),
                )));
  }
}

class Email {
  //String? email_name;
  String? body;
  int? id;
  String? name;

  Email({this.name, this.body, this.id});

  List<Email> email(String str) =>
      List<Email>.from(json.decode(str).map((x) => Email.fromJson(x)));

  factory Email.fromJson(Map<String, dynamic> json) {
    return Email(name: json['name'], body: json['body'], id: json['id']);
  }
}

class Network {
  String? url;

  Network(this.url);

  Future<List<Email>> fetch() async {
    final response = await get(Uri.parse(Uri.encodeFull(url ?? 'Sorry')));

    if (response.statusCode == 200) {
      print(response.body);
      List<Email> emaildetails = Email().email(response.body);
      return emaildetails;
    } else {
      throw ('loading failed');
    }
  }
}
