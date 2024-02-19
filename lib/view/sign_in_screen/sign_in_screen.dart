import 'package:flutter/material.dart';
import 'package:login_ui/view/home_screen/home_screen.dart';
import 'package:login_ui/view/login_screen/login_screen.dart';

class MySignupUi extends StatelessWidget {
  const MySignupUi({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController2 = TextEditingController();
    TextEditingController nameController3 = TextEditingController();
    TextEditingController nameController4 = TextEditingController();
    TextEditingController nameController5 = TextEditingController();

    var formkey1 = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    Text(
                      'Create your account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Form(
                      key: formkey1,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController2,
                            decoration: InputDecoration(
                                hintText: "  NAME",
                                labelText: " USER NAME",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: nameController3,
                            decoration: InputDecoration(
                                hintText: "  Email",
                                labelText: " EMAIL",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: nameController4,
                            decoration: InputDecoration(
                                hintText: "Password",
                                labelText: "PASSWORD",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (value) {
                              if (nameController4.text.isEmpty) {
                                return "Password is empty";
                              } else if (nameController4.text.length < 6) {
                                return "Password is too short";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: nameController5,
                            decoration: InputDecoration(
                                hintText: "Conform Password",
                                labelText: "CONFORM PASSWORD",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (value) {
                              if (nameController5.text.isEmpty) {
                                return "Password is empty";
                              } else if (nameController5 != nameController4) {
                                return " error";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (formkey1.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeUi(),
                                      ));
                                }
                              },
                              child: Text('Sign up'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already login?'),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginUi(),
                                    ));
                              },
                              child: Text('Sign in')),
                        ])
                  ]),
            ],
          )),
    );
  }
}
