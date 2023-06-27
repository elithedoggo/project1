
import'package:flutter/material.dart';
import 'package:untitled6/reservation_page.dart';
import 'package:untitled6/review_mission.dart';


void main() => runApp(const MaterialApp(home:HomePage()));

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=  TabController(length: 5, vsync: this, animationDuration: Duration.zero);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent.shade700),
                accountName: const Text('isham1128', style: TextStyle
              (fontWeight: FontWeight.bold, fontSize: 20)),
                accountEmail: const Text('isham1128@gmail.com', style: TextStyle(fontSize: 14),),
            currentAccountPicture: Image.asset("assets/images/user.webp"),),
            const ListTile( //list of stuff below the header
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
              children: [
                AppBar(
                    backgroundColor: Colors.tealAccent.shade700,
                    leading: Padding(
                      padding: const EdgeInsets.all (8),
                      child: Image.asset("assets/images/real_icon.jpeg",),),

                    title: const Text('MY플레이스',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w400
                        ))
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.tealAccent.shade700
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/images/user.webp", height: 80),
                      ),
                      //image.asset ()
                      Column(
                        children: [
                          Row(
                            children:
                            const [Text('ish****',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                              IconButton(onPressed: null, icon: Icon(Icons.share))
                            ],
                          ),
                          Row(
                            children: [

                              Column(
                                children: const[
                                  Text('Reviews', style: TextStyle(color:Colors.white
                                    ),),
                                  Text('5', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold
                                  ))],),
                              const VerticalDivider(
                                color: Colors.grey,
                                thickness: 3,
                              ),
                              Column(
                                children: const[
                                  Text('Reviews', style: TextStyle(color:Colors.white
                                  )),
                                  Text('5', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold
                                  ),)],),
                              const VerticalDivider(
                                color: Colors.white,
                                thickness: 3,
                              ),
                              Column(
                                children: const[
                                  Text('Reviews', style: TextStyle(color:Colors.white),),
                                  Text('5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))],),
                            ],
                          ),
                        ],
                      )
                    ],),),

                const ReviewMission(),


                // tabbar을 container안에서 꺼내서 화면 하단 배치
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(children: [
                    Container(
                      color: Colors.tealAccent.shade700,
                      child: TabBar(
                        indicatorColor: Colors.white,
                        controller: _tabController,
                        tabs: const[
                          Tab(child: Text("피드", style: TextStyle(fontSize: 14.3
                          ),)),
                          Tab(child: Text("타임라인", style: TextStyle(fontSize: 14.3
                          ),)),
                          Tab(child: Text("리뷰", style: TextStyle(fontSize: 14.3
                          ),)),
                          Tab(child: Text("예약·주문", style: TextStyle(fontSize: 14.3
                          ),)),
                          Tab(child: Text("저장", style: TextStyle(fontSize: 14.3
                          ),)),
                        ],
                      ),
                    ),
                  ],
                  ),
                ),
                Expanded(child:
                TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: const[
                    Text('피드'),
                    Text('타임라인'),
                    Text('리뷰'),
                    ReservationPage(),
                    Text('저장')
                  ],
                )),




                //cards

              ],
            ),


    );
  }
}