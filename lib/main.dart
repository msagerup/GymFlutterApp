import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: GymIntro()
));


class GymIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
     body: SafeArea(
       child: Container(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Container(
               color: Colors.pinkAccent,
               child: (Text('Hello')),
             ),
             Container(
               color: Colors.pinkAccent,
               child: (Text('new line')),
             ),
             Container(
               color: Colors.pinkAccent,
               child: (Text('new line again')),
             ),
             Container(
               color: Colors.blue,
               child: Row(
                 children: <Widget>[
                   Text('inline'),
                   Text('inline'),
                   Column(
                     children: <Widget>[
                       Text('dfsf'),
                       Text('fdsfd')
                     ],
                   )
                 ],
               )
             ),
           ],
         )
       )
     )
    );
  }
}






