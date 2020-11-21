import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Fruits Cake'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Color primary = Color(0xff7b7517);
    final Color background = Color(0xff2f2f4f);
    final Color overlay = Color(0xff212129);
    return Scaffold(
      backgroundColor: Color(0xff2f2f4f),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.chevron_left,
          size: 45,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Fruits Cake",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "strawberry & kiwi special",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    label: Text(
                      "1 Kg",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    selected: true,
                    selectedColor: primary,
                    backgroundColor: background,
                    onSelected: (val) {},
                  ),
                  ChoiceChip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    label: Text(
                      "2 Kg",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    selected: false,
                    selectedColor: primary,
                    backgroundColor: background,
                    onSelected: (val) {},
                  ),
                  ChoiceChip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    label: Text(
                      "3 Kg",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    selected: false,
                    selectedColor: primary,
                    backgroundColor: background,
                    onSelected: (val) {},
                  ),
                  ChoiceChip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    label: Text(
                      "4 Kg",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    selected: false,
                    selectedColor: primary,
                    backgroundColor: background,
                    onSelected: (val) {},
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(child: Image.asset("images/pasta.png")),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        Padding(
                            child: CircleAvatar(
                              child: Text("1"),
                              backgroundColor: primary,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10)),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 15),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "\$84.",
                          style: TextStyle(color: Colors.white, fontSize: 35)),
                      TextSpan(
                          text: "99",
                          style: TextStyle(color: Colors.grey, fontSize: 20))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: overlay,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset("images/eggs.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4 Eggs",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(color: Colors.grey),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset("images/vanilla.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2 tsp vanilla",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(color: Colors.grey),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Image.asset("images/sugar.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1 cup sugar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("images/map.png"),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DELIVERY",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("45,Amarlands",
                              style: TextStyle(color: Colors.white)),
                          Text("Nr. Hamer Road,London",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
