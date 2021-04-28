import 'dart:ui';

import 'package:flutter/material.dart';

import 'API/views/Pages/ToDoList.dart';

class FormWidge extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FormWidge> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Image(
            // image: NetworkImage(
            //     'https://miro.medium.com/max/200/1*ilC2Aqp5sZd1wi0CopD1Hw.png')),
            Image(
              image: AssetImage('assets/logo.png'),
              height: 200,
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: [
                          TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Phone Number',
                              ),
                              validator: (String value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Number';
                                }
                                return null;
                              },
                              maxLength: 12),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Password',
                            ),
                            validator: (String value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Password';
                              }
                              return null;
                            },
                            maxLength: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {}
                                },
                                child: const Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                // style: ElevatedButton.styleFrom(
                                //     padding:
                                //         EdgeInsets.only(top: 10, bottom: 10),
                                //     primary: Colors.blueAccent),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 40),
                            child: Text(
                              'Forgot Password?No yawa. Tap me ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {}
                              },
                              child: const Text(
                                "No Account? Sign Up",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  primary: Colors.grey[200]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ToDoList()),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  'Go To To do List by Clicking here',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
