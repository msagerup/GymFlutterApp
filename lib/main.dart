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
           // crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Container(
               color: Colors.pinkAccent,
               child: Row(
                 children: [
                   Text('new Line'),
                   Column(
                     children: [
                       Text('dfd'),
                       Text('dfd'),
                       Text('dfd'),
                       Text('dfd'),

                     ],
                   )

                 ],
               )
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
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Text('inline'),
                   Text('inline'),
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






