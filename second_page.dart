import 'dart:ui';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  var nameText = TextEditingController();
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Create new account",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40), // space below heading
                          TextField(
                            keyboardType: TextInputType.name,
                            controller: nameText,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Enter name',
                              hintStyle: TextStyle(color: Colors.white54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              suffixText: "Name",
                              suffixStyle: TextStyle(color: Colors.white),

                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20), // space below heading
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailText,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(color: Colors.white54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              suffixText: "Email",
                              suffixStyle: TextStyle(color: Colors.white),

                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),
                          TextField(
                            controller: passText,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(color: Colors.white54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              suffixText: "Password",
                              suffixStyle: TextStyle(color: Colors.white),

                              prefixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        String uName = nameText.text;
                                        String uEmail = emailText.text
                                            .toString();
                                        String uPass = passText.text;
                                        print(
                                          " Name: $uName \n Email: $uEmail \n Password: $uPass",
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        foregroundColor:
                                            Colors.white, // text color
                                      ),

                                      child: Text('Create'),
                                    ),
                                  ),

                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.black26,
                                    child: IconButton(
                                      color: Colors.white,
                                      icon: Icon(Icons.arrow_forward),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          Center(
                            child: Text(
                              "Create account to enjoy the features",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
