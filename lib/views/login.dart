import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //State
  bool logedIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[900],
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/gym2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Colors.amber.withOpacity(0.9), Colors.cyan.withOpacity(0)]
                )
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Gym-O Tron',
                                style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 50,
                                  fontFamily: ('Syne'),

                                ),
                              )
                            ],
                          ),
                        ],
                      )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.amber.withOpacity(0.3),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //View logged in or not.
                            Text(
                                '$logedIn'
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                logedIn = !logedIn;
              });
            },
            tooltip: 'Increment Counter',
            child: Text('Login'),
            backgroundColor: Colors.amber[800],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 60,
        ),
      ),
      floatingActionButtonLocation: (
          FloatingActionButtonLocation.endDocked
      ),
    );
  }
}