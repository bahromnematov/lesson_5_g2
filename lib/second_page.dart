import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  void doLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lesson 7"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              //email
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(12),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: Colors.grey)),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "User Name", border: InputBorder.none),
                ),
              ),
              //password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  validator: (input) =>
                      input!.length < 6 ? "Must be at lest 6 character" : null,
                  onSaved: (input) => _password = input!,
                  obscureText: true,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              //button
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: doLogin,
                  child: Text("Log In"),
                ),
              )
            ],
          ),
        ));
  }
}
