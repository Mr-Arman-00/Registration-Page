import 'dart:ui';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/bg1.jpg"),
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
                              "Login Your Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30), // space below heading
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
                                        String uEmail = emailText.text
                                            .toString();
                                        String uPass = passText.text;
                                        print(
                                          "Email: $uEmail, Password:$uPass",
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purpleAccent,
                                        foregroundColor:
                                            Colors.white, // text color
                                      ),

                                      child: Text('login'),
                                    ),
                                  ),

                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.black38,
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

                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'second_page');
                                },
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white70,
                                    decorationThickness: 3,
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Text(
                                "if you dont have an account!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
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
