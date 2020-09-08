import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  // home: GymIntro()
    home: QuoteList()
));


class GymIntro extends StatefulWidget {
  @override
  _GymIntroState createState() => _GymIntroState();
}

class _GymIntroState extends State<GymIntro> {

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
        height: 80,
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

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Magnus S.', text: 'Pizza would be great'),
    Quote(author: 'Tore S.', text: 'Saturday Pizza, anyone?')


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((item) => Text('${item.text} - ${item.author}')).toList(),
      )
    );
  }
}






