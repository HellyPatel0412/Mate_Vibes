import 'package:flutter/material.dart';

class User {
  final String name;

  final String image;
  User({required this.name, required this.image});
}

final allUsers = [
  User(
      name: "@diana liked your post. \n 2 hours ago",
      image:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXQlMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
  User(
      name: "@diana commented on your post. \n 2 hours ago",
      image:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXQlMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
  User(
      name: "@mark shared @foster77's post. \n 10 hours ago",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT6y4PXu8BGGuzuSd0216CUR0oJDwy5B0uyw&usqp=CAU"),
  User(
      name: "@mark started following. \n 2 days ago",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT6y4PXu8BGGuzuSd0216CUR0oJDwy5B0uyw&usqp=CAU"),
  User(
      name: "@marcella mentioned you in a post. \n 4 days ago",
      image:
          "https://images.unsplash.com/photo-1542570031-5915884ffb12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTJ8NDE4NjExfHxlbnwwfHx8fA%3D%3D&w=1000&q=80")
];
