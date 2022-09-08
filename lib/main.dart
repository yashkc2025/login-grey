import 'package:flutter/material.dart';

void main() {
  runApp(const LoginGrey());
}

class LoginGrey extends StatelessWidget {
  const LoginGrey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFFffffff),
                Color(0xffffd3d0),
                Color(0xfffff0ed),
                // Color(0xFFfcb69f),
              ])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.ac_unit,
                size: 150,
              ),
              const SizedBox(height: 10),
              const Text(
                'Hello, Again',
                style: TextStyle(
                    fontFamily: 'Cal',
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              const Text('Welcome back, We missed you',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300)),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.grey[200],
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xffeddffc), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '   Email',
                        prefix: Icon(
                          Icons.alternate_email,
                          color: Colors.lightGreen,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xffeddffc), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '   Password',
                        prefix: Icon(
                          Icons.lock,
                          color: Colors.lightBlue,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              Color(0XFF64DFDF),
                              // Color(0xffffd3d0),
                              Color.fromARGB(255, 14, 163, 255),
                            ]),

                        // color: Colors.pink[400],
                        color: const Color(0xff64dfdf),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Not a member?'),
                  Text(' Register Now',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 0, 102))),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
