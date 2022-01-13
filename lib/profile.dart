/*------------------------------Youcef ghorbel---------------------*/


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/Accueil.dart';
import 'package:myapp/reservation.dart';

class Profile extends StatelessWidget {
  List tags = ['travel', 'urban', 'fashion', 'lifestyle', 'editing'];
  List categories = [
    'Featured',
    'Neon City',
    'Street Art',
    'Fashion',
    'Studion'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x00000000),
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios , color: Color(0xff434ae8)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => StoryApp()));
              },
              iconSize: 24,
            ),
          
          elevation: 0,
          backgroundColor: Color(0xff09031D),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert , color: Color(0xff434ae8)),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //name section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, top: 7),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/img1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Youcef Page',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.location_on,
                                color: Colors.black, size: 17),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Ariana - TN',
                                  style: TextStyle(
                                      color: Colors.black,
                                      wordSpacing: 2,
                                      letterSpacing: 4)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            //following section
            Padding(
              padding: const EdgeInsets.only(
                  right: 38.0, left: 38, top: 15, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('17K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      Text(
                        'followers',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    width: 0.2,
                    height: 22,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('387',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      Text(
                        'following',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    width: 0.2,
                    height: 22,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('200K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      Text(
                        'likes',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 40),

              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                            colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft)),
                    margin: EdgeInsets.only(right: 20),
                    child: Text('follow',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: 5, right: 18, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(33)),
                          gradient: LinearGradient(
                              colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                              begin: Alignment.bottomRight,
                              end: Alignment.centerLeft)),
                      margin: EdgeInsets.only(right: 20),
                      child: Padding(
                        child: Text('message',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        padding: const EdgeInsets.only(left: 10),
                      )),
                  Container(
                    padding:
                        EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                            colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft)),
                    margin: EdgeInsets.only(right: 20),
                    child:GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Reservation()))
                      },
                      child: Text(
                        'Reservation',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    
                ],
              ),

              //tags section
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                    margin: EdgeInsets.only(right: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 5, right: 20, left: 20),
                      child: Text(tags[index],
                          style: TextStyle(color: Colors.black)),
                    ),
                  );
                },
              ),
            ), //gallery section
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Color(0xff09031D),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(34))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, right: 25, left: 25),
                      child: Text(
                        'Portfolio',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25, left: 25),
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                              padding: const EdgeInsets.only(right: 17, top: 3),
                              child: index == 1
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(categories[index],
                                            style: TextStyle(
                                                color: Color(0xff434ae8),
                                                fontSize: 19)),
                                        CircleAvatar(
                                          radius: 2,
                                          backgroundColor: Color(0xff434ae8),
                                        )
                                      ],
                                    )
                                  : Text(categories[index],
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.9),
                                          fontSize: 19)));
                        },
                      ),
                    ),
                    Expanded(
                        child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/images/img${index + 1}.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(2, index.isEven ? 3 : 1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
