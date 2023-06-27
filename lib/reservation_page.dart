import 'package:flutter/material.dart';
import 'package:untitled6/cards.dart';
import 'package:untitled6/scroll_widget.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(0),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      child:
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(onPressed: null, child: Column(
                              children:const [
                                Icon(Icons.border_all_outlined),
                                Text("All"),
                              ],
                            )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(onPressed: null, child: Column(
                              children:const [
                                Icon(Icons.sports_basketball_sharp),
                                Text("Sports/ Leisure"),
                              ],
                            )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(onPressed: null, child: Column(
                              children:const [
                                Icon(Icons.warehouse),
                                Text("Lodging"),
                              ],
                            )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(onPressed: null, child: Column(
                              children:const [
                                Icon(Icons.border_all_outlined),
                                Text("Lodging"),
                              ],
                            )
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(onPressed: null, child: Column(
                              children:const [
                                Icon(Icons.border_all_outlined),
                                Text("Lodging"),
                              ],
                            )
                            ),
                          ),
                        ],
                      ),
                    ),),



                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("함인식 has made 13 reservations and paid 814,200 KRW.",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 21)),
                    ),

                    const ScrollWidget(),

                    const Cards(),

                    const Cards(),

                    const Cards(),

                    const Cards(),

                    const Cards(),
                  ],
                ),
              ),
            ],
          )

    );
  }
}
