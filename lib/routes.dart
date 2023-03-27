import 'package:flutter/material.dart';


class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //container customization
        width: 300,
        height: 300,


        padding: EdgeInsets.all(100.0),
        margin:  EdgeInsets.all(150.0),

        child: Column(
          children: [
            Material(
                elevation: 15,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> const eventTwo()),);},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/concert.png"),
                          height: 80,
                          width: 80,
                          fit:BoxFit.cover,
                        ),
                        //SizedBox(width: 5),
                        //Text('Concert', style: TextStyle(fontSize:15, color: Colors.white),)
                      ],
                    )
                )

            ),

            SizedBox(height: 30),

            Material(
                elevation: 15,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> const eventTwo()),);},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/air.png"),
                          height: 80,
                          width: 80,
                          fit:BoxFit.cover,
                        ),
                        //SizedBox(width: 5),
                        //Text('Concert', style: TextStyle(fontSize:15, color: Colors.white),)
                      ],
                    )
                )

            ),

            SizedBox(height: 30),

            Material(
                elevation: 15,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> const eventTwo()),);},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/car.png"),
                          height: 80,
                          width: 80,
                          fit:BoxFit.cover,
                        ),
                        //SizedBox(width: 5),
                        //Text('Concert', style: TextStyle(fontSize:15, color: Colors.white),)
                      ],
                    )
                )

            ),



          ],
        ),



      ),
    );
  }
}

class eventTwo extends StatelessWidget {
  const eventTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight:Radius.circular(50), bottomLeft: Radius.circular(50), topRight: Radius.circular(50), topLeft: Radius.circular(50) ),
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/chicago.png"),
                      fit: BoxFit.fill,

                    )
                )
            ),
          ),


          title: Text("Concert",
              style: TextStyle(
                  color:Colors.white,fontSize: 30)
          ),
          backgroundColor: Colors.yellow,
          //roundring the edges
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),bottomLeft:Radius.circular(50),topLeft: Radius.circular(50),topRight: Radius.circular(50))
          ),

        ),
      ),
      extendBodyBehindAppBar: true,


      body: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(190.0),
          margin:  EdgeInsets.all(170.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/concert.png",),
                fit: BoxFit.fill,


              )
          )
      ),

    );




  }
}
