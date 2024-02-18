import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Color.fromARGB(255, 219, 219, 219),
      menuScreen: drowpage(),
      mainScreen: home(),
      angle: -10,
      duration: Duration(microseconds: 600),
    );
  }
}

class drowpage extends StatefulWidget {
  const drowpage({super.key});

  @override
  State<drowpage> createState() => _drowpageState();
}

class _drowpageState extends State<drowpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 219, 219),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 80, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image(
                  image: AssetImage("images/my.jpeg"),
                  width: 150, // Set your desired width
                  height: 150, // Set your desired height
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(
                  "Muhammad Sajid",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 20,
            ),
           buildMenuItem("Home", Icons.home),
            SizedBox(
              height: 10,
            ),
            buildMenuItem("Profile", Icons.person_3),
            SizedBox(
              height: 10,
            ),
            buildMenuItem("Post", Icons.post_add),
            SizedBox(
              height: 10,
            ),
            buildMenuItem("Setting", Icons.settings),
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 0.5,
                    color: Colors.black,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildMenuItem("Any Question", Icons.question_answer),
            SizedBox(
              height: 10,
            ),
            buildMenuItem("LogOut", Icons.login_outlined),
          ],
        ));
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
          iconSize: 30,
        ),
      ),
      body: Center(
        child: Text("Muhammad Sajid",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
Widget buildMenuItem(String title, IconData icon) {
  return Padding(
    padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
    child: Row(
      children: [
        Icon(
          icon,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}