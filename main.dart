import 'package:flutter/material.dart';
import 'package:truecaller_app/contacts.dart';
import './calls.dart';
import './homepage.dart';
import './message.dart';
import './msg.dart';

void main() {
  runApp(TruecallerApp());
}

class TruecallerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TruecallerAppState();
  }
}

class TruecallerAppState extends State<TruecallerApp> {
  List pages = [Homepage(), Json(), Calls()];
  int currentindex = 0;

  void ontappedbar(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: NavigationBarItem(),
      appBar: AppBar(
        title: const Text(
          'Truecaller App',
        ),
      ),
      backgroundColor: Colors.yellow,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            ontappedbar(index);
            print('tapped item - ${currentindex}');
          },
          backgroundColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts, size: 25, color: Colors.orange),
                label: 'Contacts'),

            BottomNavigationBarItem(
                icon: Icon(Icons.message, size: 25, color: Colors.red),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call, size: 25, color: Colors.green),
                label: 'Calls'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.block, size: 20, color: Colors.black),
            //     label: 'Blocking')
          ]),
      //     BottomNavigation(currentTab

      body: pages[currentindex],
    ));
  }
}

// class BottomNavigation extends StatelessWidget{
//    final  TabItem currentTab,

//   BottomNavigation(this.currentTab)

//   @override
//   Widget build(BuildContext context){
//     return
//   }

// }

class NavigationBarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Text('P',
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                  accountName: Text('priyanka',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  accountEmail: Text('priyanka@gmail.com',
                      style: TextStyle(fontSize: 20, color: Colors.black))),
              SizedBox(
                  width: 100,
                  height: 670,
                  child: ListView(children: [
                    Row(children: [
                      Container(
                          margin: EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: TextButton.icon(
                              onPressed: () => null,
                              icon: Icon(Icons.remove_red_eye,
                                  size: 25, color: Colors.black),
                              label: Text(''))),
                      TextButton(
                        onPressed: () => selectedItem(context, 0),
                        child: Text('Who viewed my profile',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      )
                    ]),
                    Row(children: [
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: TextButton.icon(
                              onPressed: () => null,
                              icon: Icon(Icons.notifications,
                                  size: 25, color: Colors.black),
                              label: Text(''))),
                      TextButton(
                        onPressed: () => selectedItem(context, 1),
                        child: Text('Notifications',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                    Row(children: [
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: TextButton.icon(
                              onPressed: () => null,
                              icon: Icon(Icons.notes,
                                  size: 25, color: Colors.black),
                              label: Text(''))),
                      TextButton(
                        onPressed: () => selectedItem(context, 2),
                        child: Text('Truecaller news',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                    Row(children: [
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                                thickness: 5.0,
                                height: 3.0,
                                color: Colors.grey)),
                      )
                    ])
                  ]))
            ],
          )),
    );
  }
}

int? index;

List contactinfo = Contacts.contactsdetails;

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Viewedprofile()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Notifications()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Truecallernews()));
  }
}

class Viewedprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Viewed profile')),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
    );
  }
}

class Truecallernews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Truecallernews')),
    );
  }
}
