/*-----------------------Marwa Sadkaoui -------------------------------*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/data/storydata.dart';
import 'package:myapp/screen/storyview.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
              borderRadius: BorderRadius.circular(50.0),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => StoryView(
                              story: story,
                            )));
              },
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Color(0xff434ae8), width: 2.0),
                  
                  image: DecorationImage(
                    image: NetworkImage(story.avatarUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ));
}
