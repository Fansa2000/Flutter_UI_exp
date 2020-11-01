import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -150,
              right: -300,
              child: Container(
                width: 600,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 30,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade800,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -330,
              left: -250,
              child: Container(
                width: 450,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
                top: 200,
                right: 16,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Container(
                    //color: Colors.blue,
                    width: 320,
                    height: 280,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 40,
                              color: Colors.lightBlue.shade800,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Email (Required)'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Password (Required)'),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Forgot password?'),
                        ],
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: 410,
              left: 240,
              child: SafeArea(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 110,
              child: Text(
                'or Login with',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 590,
              left: 70,
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 200,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 650,
              left: 70,
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 200,
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset('images/icons/google_g.png'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Sign In with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 30,
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
