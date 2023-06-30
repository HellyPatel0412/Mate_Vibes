import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mate_vibes/feature/profile/logout.dart';
import 'package:mate_vibes/feature/profile/numbers.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Logout()));
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [buildTop(), buildContent()],
        ));
  }

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Flutter software engineer & google developer",
              style: TextStyle(
                fontSize: 18,
                height: 1.4,
              ),
            )
          ],
        ),
      );
  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
            shape: CircleBorder(),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Center(
                child: Icon(
                  icon,
                  size: 32,
                ),
              ),
            )),
      );

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage())
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          "https://images.unsplash.com/photo-1580927752452-89d86da3fa0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
      );
  Widget buildContent() => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            "Daniel",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Flutter Software Developer",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.linkedin),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(),
          const SizedBox(
            height: 16,
          ),
          NumbersWidget(),
          const SizedBox(
            height: 16,
          ),
          Divider(),
          const SizedBox(
            height: 16,
          ),
          buildAbout(),
          const SizedBox(
            height: 32,
          ),
        ],
      );
}
