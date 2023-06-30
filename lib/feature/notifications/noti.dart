import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mate_vibes/feature/notifications/user.dart';

enum Actions { delete }

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  List<User> users = allUsers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontFamily: 'Manrope', color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 37,
              top: 26,
              right: 37,
              bottom: 15,
            ),
            child: Text(
              "Mark all as read",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: "Manrope", color: Colors.black),
            ),
          ),
        ],
      ),
      body: SlidableAutoCloseBehavior(
        closeWhenOpened: true,
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Slidable(
                key: Key(user.name),
                startActionPane: ActionPane(
                    motion: const StretchMotion(),
                    dismissible: DismissiblePane(
                      onDismissed: () => _onDismissed(index, Actions.delete),
                    ),
                    children: [
                      SlidableAction(
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: "Delete",
                        onPressed: (context) =>
                            _onDismissed(index, Actions.delete),
                      )
                    ]),
                child: buildUserListTile(user));
          },
        ),
      ),
    );
  }

  void _onDismissed(int index, Actions action) {
    final user = users[index];
    setState(() {
      users.removeAt(index);
    });
    switch (action) {
      case Actions.delete:
        _showSnackBar(context, '${user.name} is deleted', Colors.red);
        break;
    }
  }

  void _showSnackBar(BuildContext context, String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Widget buildUserListTile(User user) => Builder(
        builder: (context) => ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: Text(user.name),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(user.image),
          ),
          onTap: () {
            final slidable = Slidable.of(context)!;
            final isClosed =
                slidable.actionPaneType.value == ActionPaneType.none;
            if (isClosed) {
              slidable.openStartActionPane();
            } else {
              slidable.close();
            }
          },
        ),
      );
}
