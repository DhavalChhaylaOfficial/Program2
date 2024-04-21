import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageslider/C.dart';
import 'package:imageslider/Java.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondPage extends StatefulWidget {
  var name;

  SecondPage(this.name);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome: ' + widget.name,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => JavaPage()),
                            );
                          });
                        },
                        child: Text("Male"),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => cPage()),
                            );
                          });
                        },
                        child: Text("FeMale"),
                      ),
                      SizedBox(height: 20),
                      CarouselSlider(
                        items: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal spacing between images
                            child: Image.asset('assets/w1.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal spacing between images
                            child: Image.asset('assets/w2.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal spacing between images
                            child: Image.asset('assets/w3.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal spacing between images
                            child: Image.asset('assets/w4.jpg'),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
