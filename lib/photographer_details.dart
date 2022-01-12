// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PhotographerDetails extends StatefulWidget {
  final PhotographerDetails_name;
  final PhotographerDetails_price;
  final PhotographerDetails_picture;
  final PhotographerDetails_email;
  final PhotographerDetails_description;
  final PhotographerDetails_likes;
  final PhotographerDetails_followers;
  final PhotographerDetails_following;

  PhotographerDetails({
    this.PhotographerDetails_name,
    this.PhotographerDetails_price,
    this.PhotographerDetails_picture,
    this.PhotographerDetails_email,
    this.PhotographerDetails_description,
    this.PhotographerDetails_likes,
    this.PhotographerDetails_followers,
    this.PhotographerDetails_following,
  });

  @override
  _PhotographerDetailsState createState() => _PhotographerDetailsState();
}

class _PhotographerDetailsState extends State<PhotographerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Center(
            child: Text(
          "ShootMe",
        )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera),
            onPressed: () {},
            iconSize: 48,
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150.0,
            width: 100.0,
            child: Container(
              height: 150.0,
              width: 150.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60.0,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage(widget.PhotographerDetails_picture),
                  radius: 50.0,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    widget.PhotographerDetails_name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    widget.PhotographerDetails_email,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: Text(
                        widget.PhotographerDetails_description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 70.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          ' // Add your onPressed code here!';
                        },
                        child: const Text("Follow",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.italic)),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.teal,
                          elevation: 12,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextButton(
                        onPressed: () {
                          ' // Add your onPressed code here!';
                        },
                        child: const Text("Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.italic)),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.teal,
                          elevation: 12,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                color: Colors.white,
                child: Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[200],
                    ),
                    child: SizedBox(
                      height: 70,
                      width: 130,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Container(
                                child: Text(
                                    widget.PhotographerDetails_likes.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                child: const Text("Likes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[200],
                    ),
                    child: SizedBox(
                      height: 70,
                      width: 131,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Container(
                                child: Text(
                                    widget.PhotographerDetails_followers
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                child: const Text("Follower",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[200]),
                    child: SizedBox(
                      height: 70,
                      width: 131,
                      child: Center(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Container(
                              child: Text(
                                  widget.PhotographerDetails_following
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                              child: const Text("Following",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
          SizedBox(
            height: 320.0,
            child: Image.asset(widget.PhotographerDetails_picture),
          ),
        ],
      ),
    );
  }
}
