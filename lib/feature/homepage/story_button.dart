import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/homepage/story_data.dart';
import 'package:mate_vibes/feature/homepage/story_view.dart';

Widget StoryButton(StoryData story, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(40),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => StoryView(
                          story: story,
                        )));
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.red, width: 2.0)),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: NetworkImage(story.avatarUrl),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(story.userName),
      ],
    ),
  );
}
