import 'package:flutter/material.dart';
import 'package:login_ui/view/home_screen/home_scree_2.dart';
import 'package:login_ui/view/home_screen/home_screen.dart';
import 'package:login_ui/view/sign_in_screen/sign_in_screen.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController nameController1 = TextEditingController();

    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Welcome's to Learning App",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "  NAME",
                          // hintStyle: TextStyle(color: Colors.white),
                          labelText: " USER NAME",
                          // labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "User name is empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameController1,
                      decoration: InputDecoration(
                          hintText: "PASSWORD",
                          // hintStyle: TextStyle(color: Colors.white),
                          labelText: "PASSWORD",
                          // labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (nameController1.text.isEmpty) {
                          return "Password is empty";
                        } else if (nameController1.text.length < 6) {
                          return "Password is too short";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeUi2(),
                        ));
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.blue),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MySignupUi(),
                            ));
                      },
                      child: Text('Sign up')),
                ])
          ],
        ),
      ),
    );
  }
}
