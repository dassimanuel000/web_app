import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Web(),
    );
  }
}


class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(left: 5),
                child: Container(
                  width: 100,
                  child: Center(
                    child: Text(
                      "eNno",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Center(
                child: Container(
                  height: 30.0,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.black45, fontSize: 14.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: InkWell(
                onTap: () {
                  menu(context);
                },
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    menu(context);
                  },
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                height: 320,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("./assets/images/hero-img.png"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Elegants and Creative Solutions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "We are team of talanted designers making websites with Bootstrap",
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 215,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(2.5),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 15,
                                        offset: const Offset(0.0, 15.0),
                                        color: Colors.green.withAlpha(20))
                                  ]),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 2.5,
                                    ),
                                    Text(
                                      'Watch Video',
                                      style: TextStyle(
                                          color: Colors.black12,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_downward),
                                      onPressed: () {},
                                      color: Colors.black12,
                                      iconSize: 19,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MainButton(
                      title: "Lorem Ipsum",
                      value: Icon(Icons.computer),
                      text:
                          "Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"),
                  SizedBox(
                    height: 10,
                  ),
                  MainButton(
                      title: "Dolor Sitema",
                      value: Icon(Icons.image),
                      text:
                          "Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"),
                  SizedBox(
                    height: 10,
                  ),
                  MainButton(
                      title: "Sed ut perspiciatis",
                      value: Icon(Icons.track_changes),
                      text:
                          "Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"),
                ],
              ),
            ),
          ],
        ));
  }
}

menu(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: Material(
                type: MaterialType.transparency,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Text("data"),
                )));
      });
}

class MainButton extends StatelessWidget {
  const MainButton(
      {Key key,
      @required this.title,
      @required this.value,
      @required this.text})
      : super(key: key);

  final String title, text;
  final Icon value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 300,
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: IconButton(
                icon: value,
                onPressed: () {},
                color: Colors.green,
                iconSize: 24,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
