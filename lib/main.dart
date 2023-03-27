

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_two/routes.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'dart:math' as math;




void main() {
  runApp(const MyApp());
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}





class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super (key:key);

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Container(
            color: Colors.deepOrange, child: Center(
            child: Text(headerText,style: TextStyle(fontSize: 19, color: Colors.white)))),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
          body: CustomScrollView(
            slivers:<Widget> [ //takes slivers as children
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("MovieFlix"),
                  background: Image.asset('assets/title.png',fit: BoxFit.cover,),

                ),
                backgroundColor: Colors.orange,
                centerTitle: true,
                shadowColor: Colors.orange,
                elevation: 30,
                pinned: true,
                expandedHeight: 200,

              ),
              makeHeader('Comedy'),
              SliverFixedExtentList(
                itemExtent: 150,
                delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.amber[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const secondPage()),);
                                    },

                                    child: Container(
                                        width: 60,
                                        child: Image.asset('assets/lostcity.png', fit: BoxFit.cover,)
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Lost City', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Aaron Nee, March 25, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const secondPage()),);
                                    },
                                    child: Container(
                                        width: 60,
                                        child: Image.asset('assets/amsterdam.png',fit: BoxFit.cover,)
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Amsterdam', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('David Russell, October 7, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const secondPage()),);
                                    },
                                    child: Container(
                                        width:60,
                                        child: Image.asset('assets/bullettrain.png')),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Bullet Train', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text(' David Leitch, August 5, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap:(){
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const secondPage()),);
                                        },
                                        child: Container(width:60,child: Image.asset('assets/superbad.png'))),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Super Bad', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                        ),
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Greg Mottola, August 17, 2007', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(width:60,child: Image.asset('assets/coda.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('CODA', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Sian Heder, August 13, 2021', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),

              makeHeader('Action'),
              SliverFixedExtentList(
                itemExtent: 150,
                delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.amber[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/batman.png', fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Batman', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Matt Reeves, March 4, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/watcher.png',fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('The Watcher', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Chloe Okuno, June 3, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width:60,
                                      child: Image.asset('assets/prey.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Prey', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text(' Dan Trachtenberg, July 19, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: [
                                    Container(width:60,child: Image.asset('assets/blackpanther.png')),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Black Panther', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                        ),
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Ryan Coogler, November 11, 2007', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(width:60,child: Image.asset('assets/old.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('OLD', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Sian Heder, August 13, 2021', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ]
                ),
              ),

              makeHeader('Thriller'),
              SliverFixedExtentList(
                itemExtent: 150,
                delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.amber[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/nope.png', fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Nope', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Jordan Peele, January 11, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/drive.png',fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Drive', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Nicolas Winding, October 7, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width:60,
                                      child: Image.asset('assets/bullettrain.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Bullet Train', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text(' David Leitch, August 5, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: [
                                    Container(width:60,child: Image.asset('assets/gonegirl.png')),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Gone Girl', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                        ),
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('David Fincher, October 3, 2014', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(width:60,child: Image.asset('assets/blackswan.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Black Swan', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Darren Aronofsky, December 3, 2010', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),

              makeHeader('Drama'),
              SliverFixedExtentList(
                itemExtent: 150,
                delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.amber[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/northman.png', fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('North Man', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Robert Eggers, April 22, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/titanic.png',fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Titanic', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('James Cameron, December 19, 1997', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width:60,
                                      child: Image.asset('assets/clueless.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Clueless', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Amy Heckerling, July 19, 1995', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: [
                                    Container(width:60,child: Image.asset('assets/lalaland.png')),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('LaLa Land', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                        ),
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Damien Chazelle, August 17, 2007', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(width:60,child: Image.asset('assets/loveactually.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Love Actually', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Richard Curtis, November 6, 2003', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),

              makeHeader('Kids'),
              SliverFixedExtentList(
                itemExtent: 150,
                delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.amber[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/luck.png', fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Luck', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Peggy Holmes, August 5, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width: 60,
                                      child: Image.asset('assets/coco.png',fit: BoxFit.cover,)
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Coco', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Lee Unkrich, November 22, 2017', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      width:60,
                                      child: Image.asset('assets/lightyear.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Light Year', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text(' Angus MacLane, November 17, 2022', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: [
                                    Container(width:60,child: Image.asset('assets/sing.png')),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Sing', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                        ),
                                        Container(width: 100,
                                          color: Colors.purple[600],
                                          child: const Center(child: Text('Garth Jennings, December 21, 2016', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 50),
                            Container(width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                children: [
                                  Container(width:60,child: Image.asset('assets/luca.png')),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Luca', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                      ),
                                      Container(width: 100,
                                        color: Colors.purple[600],
                                        child: const Center(child: Text('Enrico Casarosa, June 18, 2021', style: TextStyle(fontSize: 9, color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),

            ],
          ),
        )
    );
  }

}




