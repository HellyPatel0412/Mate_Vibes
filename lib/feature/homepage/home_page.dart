import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/donation/color.dart';

import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/homepage/post.dart';

import 'package:mate_vibes/feature/homepage/story_button.dart';
import 'package:mate_vibes/feature/homepage/story_data.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<StoryData> stories = [
    new StoryData(
        "Diana",
        "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80",
        "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
    new StoryData(
        "Daniel",
        "data:image/jpeg;base64,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",
        "https://media.istockphoto.com/id/1376153425/photo/person-standing-on-the-top-of-the-mountain-with-hand-up-back-view-over-the-city-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=nleSNzNoQEmCOQp4A5335-Z--vq4DgUhAUIMAhSytw8="),
    new StoryData(
        "Marcella",
        "https://images.unsplash.com/photo-1542570031-5915884ffb12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTJ8NDE4NjExfHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
        "https://media.istockphoto.com/id/1319723972/photo/beautiful-young-asian-woman-sitting-cross-legged-by-the-promenade-against-urban-city-skyline.jpg?b=1&s=170667a&w=0&k=20&c=tab2AyGvz6M283JYgKSlqRxFrNaLwhjFaW9G_wye_PY="),
    new StoryData(
        "Mark",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT6y4PXu8BGGuzuSd0216CUR0oJDwy5B0uyw&usqp=CAU",
        "https://media.istockphoto.com/id/1355017918/photo/passenger-airplane-taking-of-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=PPbjTcZHqycV0G1gkG0GRpEnmf1BOO0Cf07ltf1_tX4="),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              StoryButton(stories[0], context),
              StoryButton(stories[1], context),
              StoryButton(stories[2], context),
              StoryButton(stories[3], context),
            ]),
          ),
          Expanded(child: Post())
        ],
      ),
    );
  }
}
