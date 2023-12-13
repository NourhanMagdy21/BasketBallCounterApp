import 'package:flutter/material.dart';

void main() {
  runApp(  BasketBall());
}

class BasketBall extends StatefulWidget {


  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
   int teamApoints = 0;
  int teamBpoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("Points Counter"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("$teamApoints",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 150)),
                      ElevatedButton(
                        onPressed: () {

                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints+=2;
                          });

                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints+=3;
                          });

                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 380,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "$teamBpoints",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {

                          setState(() {
                            teamBpoints++;
                          });

                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints+=2;
                          });

                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints+=3;
                          });

                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(
                flex: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamApoints=0;
                    teamBpoints=0;

                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: Size(150, 50),
                ),
              ),
              Spacer(
                flex: 40,
              ),
            ],
          ),
        ));
  }
}
