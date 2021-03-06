// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, unnecessary_new

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/Search/HomeScreen.dart';
import 'package:myapp/components/storybtn.dart';
import 'package:myapp/profile.dart';
import 'package:myapp/reservation.dart';
import 'package:myapp/bestphotographs.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/settings.dart';
import 'data/storydata.dart';

class StoryApp extends StatefulWidget {
  @override
  _StoryAppState createState() => _StoryAppState();
}

/*-----------------------Marwa Sadkaoui -------------------------------*/
class _StoryAppState extends State<StoryApp> {
  List<StoryData> stories = [
    new StoryData(
      "Marwa Sadkaoui",
      "https://randomuser.me/api/portraits/women/65.jpg",
      "https://wallpaperaccess.com/full/4532572.jpg",
    ),
    new StoryData(
      "Marwa Sadkaoui",
      "https://randomuser.me/api/portraits/women/65.jpg",
      "https://wallpaperaccess.com/full/4532572.jpg",
    ),
    new StoryData(
      "Marwa Sadkaoui",
      "https://randomuser.me/api/portraits/women/65.jpg",
      "https://wallpaperaccess.com/full/4532572.jpg",
    ),
    new StoryData(
      "Marwa Sadkaoui",
      "https://randomuser.me/api/portraits/women/65.jpg",
      "https://wallpaperaccess.com/full/4532572.jpg",
    ),
    new StoryData(
      "Marwa Sadkaoui",
      "https://randomuser.me/api/portraits/women/65.jpg",
      "https://wallpaperaccess.com/full/4532572.jpg",
    ),
  ];
  /*-----------------------Arij flihi -------------------------------*/
  Widget imageCarousel = SizedBox(
    height: 150.0,
    width: 100.0,
    child: CarouselSlider(
        items: [
          Image.asset("assets/images/images.jpg"),
          Image.asset("assets/images/téléchargement.jpg"),
          Image.asset("assets/images/téléchargement (1).jpg"),
          Image.asset("assets/images/téléchargement (2).jpg"),
          Image.asset("assets/images/téléchargement (3).jpg"),
          Image.asset("assets/images/téléchargement (4).jpg"),
        ],
        options: CarouselOptions(
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          height: 150.0,
          enlargeCenterPage: true,
        )),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Center(
            child: Text("ShootMe",
                style: TextStyle(
                  color: Colors.white,
                ))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera),
            color: Colors.white,
            onPressed: () {},
            iconSize: 48,
          ),
        ],
        backgroundColor: Color(0xff09031D),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: const Text("Youcef"),
              accountEmail: const Text("Youcef@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        (Icons.person),
                        color: Color(0xff434ae8),
                      ))),
              decoration: const BoxDecoration(
                color: Color(0xff09031D),
              )),
          InkWell(
            onTap: () {},
            child: const ListTile(
                title: Text('Reservations'),
                leading: Icon(Icons.camera, color: Color(0xff434ae8))),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => settings()));
            },
            child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Color(0xff434ae8))),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
                title: Text('about'),
                leading: Icon(Icons.help, color: Color(0xff434ae8))),
          ),
        ],
      )),
      //Body
      /*-----------------------Marwa Sadkaoui -------------------------------*/
      body: Column(
        //Stories Container
        children: [
          Container(
            width: double.infinity,
            height: 90.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),
              ],
            ),
          ),
          /*-----------------------Arij flihi -------------------------------*/
          Container(
            width: double.infinity,
            height: 520.0,
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff09031D),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Open Sans',
                        fontSize: 25),
                  ),
                ),
                imageCarousel,
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Best Photographers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff09031D),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Open Sans',
                        fontSize: 25),
                  ),
                ),
                //grid view
                SizedBox(
                  height: 400.0,
                  child: bestphotographs(),
                )
              ],
            ),
          ),
        ],
      ),
      /*-----------------------Marwa Sadkaoui -------------------------------*/
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Spacer(flex: 1),
            IconButton(
              icon: const Icon(Icons.home, color: Color(0xff09031D)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => StoryApp()));
              },
              iconSize: 48,
            ),
            const Spacer(flex: 1),
            IconButton(
              icon: const Icon(Icons.search_outlined, color: Color(0xff09031D)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              iconSize: 48,
            ),
            const Spacer(flex: 1),
            IconButton(
              icon: const Icon(Icons.add_box_rounded, color: Color(0xff09031D)),
              onPressed: () {},
              iconSize: 48,
            ),
            const Spacer(flex: 1),
            IconButton(
              icon: const Icon(Icons.favorite_outline_outlined,
                  color: Color(0xff09031D)),
              onPressed: () {},
              iconSize: 48,
            ),
            const Spacer(flex: 1),
            IconButton(
              icon:
                  const Icon(Icons.portrait_outlined, color: Color(0xff09031D)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    builder: (context) => Profile()));
              },
              iconSize: 48,
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

class Categories {}
