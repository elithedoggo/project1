import 'package:flutter/material.dart';
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Row(
      children: [
        Image.asset("assets/images/knife.png", height: 80),
        Column(
          children:[
            Row(
              children: const[
                Text("코야마"),
              IconButton(onPressed: null, icon:Icon(Icons.star))],
            ),
            Row(
              children: const[
                Text("Fri, 3 Mar")
              ],
            )
        ],)],
    ),
     Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),),
       elevation: 4,
       child: Column(
         children: [
           const Text('1st booking'),
           const Divider(
             color: Colors.grey,
             height: 3,
             thickness: 3,
             indent: 3,
             endIndent: 3,
           ),
           Column(
             children:[
               Row(
                 children: const[
                   Text("디너 (1부 OR 2부)")
                 ]
               ),
               Row(
                 children: const[
                   Text("4 people")
                 ],
               )
             ],
           )
         ],
       ),
    )],
    )
    ;
  }
}

