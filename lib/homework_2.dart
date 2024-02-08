import 'package:flutter/material.dart';

class Homework2 extends StatefulWidget {
  static final String id = "homework2";

  const Homework2({super.key});

  @override
  State<Homework2> createState() => _Homework2State();
}

class _Homework2State extends State<Homework2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: "Password"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sign Up"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account"),
                TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Homework1.id);
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
