import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import '../global/data.dart';

// ignore: camel_case_types
class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _bar();
}

Color? color = Colors.white;
int? curr_ind = -1, ind = 0;
String? s;
bool g = false;

class _bar extends State<bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (int i = 0; i < list1.length; i++)
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          //    color = Colors.blue;
                          setState(() {
                            curr_ind = i;
                            g = true;
                            switch (i) {
                              case 0:
                                s = "there is alot of ${list1[i]}";
                                break;
                              case 1:
                                s = "there is alot of ${list1[i]}";
                                break;
                              case 2:
                                s = "there is alot of ${list1[i]}";
                                break;
                              case 3:
                                s = "there is alot of ${list1[i]}";
                                break;
                              default:
                                s = "there is alot of ${list1[i]}";
                                break;
                            }
                          });
                        },
                        child: Text(
                          "${list1[i]}",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              curr_ind == i ? Colors.red : Colors.grey,
                          minimumSize: Size(2, 1),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          if (g)
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 10.0,
                    blurRadius: 10.0,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Center(
                  child: Text(
                "$s",
                style: GoogleFonts.racingSansOne(
                  fontSize: 17,
                  color: Color.fromARGB(255, 67, 72, 169),
                ),
              )),
            )
        ],
      ),
    );
  }
}
