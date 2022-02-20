import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  "MyPet",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "The Pawmise You Made,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/paws.png'))),
            )
          ],
        ),
        Column(
          children: <Widget>[
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(context.MaterialPageRoute(builder: (context) =>Login()));         
              },
              shape: RoundedRectangleBorder(
                side:BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
              ),
              child:Text("Login",
              style:TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20
                ),
              )

          ],
            )
          ],
    
      ),
      ),
    ),
    );
  }
}
