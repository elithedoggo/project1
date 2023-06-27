import'package:flutter/material.dart';
import'package:untitled6/review_page.dart';
import 'package:untitled6/mission_page.dart';

class ReviewMission extends StatefulWidget {
  const ReviewMission({Key? key}) : super(key: key);

  @override
  State<ReviewMission> createState() => _ReviewMissionState();
}

class _ReviewMissionState extends State<ReviewMission> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        height: 50,
        color: Colors.tealAccent.shade700,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal:10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    backgroundColor: Colors.tealAccent.shade700,
                    fixedSize: const Size(230, 30)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ReviewPage())
                  );
                },
                child:
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(Icons.note_alt_outlined, color:Colors.teal),
                    Text('Review', style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),

                  ],
                ), ),),
            Padding(padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    backgroundColor: Colors.tealAccent.shade700,
                    fixedSize: const Size(160, 30)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MissionPage())
                  );
                },
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(Icons.check_circle_outline, color: Colors.teal,),
                    Text('Mission', style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                  ],),),
            ),
          ], ),)
    );
  }
}
