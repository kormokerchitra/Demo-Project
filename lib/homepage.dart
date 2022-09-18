import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
        // leading: Icon(Icons.email),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Body data 1",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
              Image.asset(
                "assets/images.jpg",
                height: 100,
                width: 150,
              ),
              // Image.network("https://picsum.photos/200/300"),
              // Image.network("https://picsum.photos/200/300"),
              Container(margin: EdgeInsets.all(20), child: Text("Body data 2")),
              Container(margin: EdgeInsets.all(20), child: Text("Body data 3")),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.all(20), child: Text("Body data 4")),
                  Container(
                      margin: EdgeInsets.all(20), child: Text("Body data 5")),
                  Container(
                      margin: EdgeInsets.all(20), child: Text("Body data 6")),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: "enter text"),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(child: Text("Bottom Nav")),
      drawer: Drawer(
        child: SafeArea(
            child: Column(
          children: [
            Text("Drawer"),
            Text("Drawer"),
            Text("Drawer"),
            Text("Drawer"),
            Text("Drawer"),
          ],
        )),
      ),
    );
  }
}
