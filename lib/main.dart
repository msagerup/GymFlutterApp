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
       child: Column(
         children: [
           Expanded(
             child: Container(
               color: Colors.redAccent,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                       Text('Coumn 1'),
                       Text('CSD')
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Column 2')
                     ],
                   )
                 ],
               )
             ),
           ),
           Expanded(
             child: Container(
               color: Colors.black87,
             ),
           ),
           Expanded(
             child: Container(
               color: Colors.redAccent,
             ),
           ),
         ],
       )
     )
    );
  }
}






