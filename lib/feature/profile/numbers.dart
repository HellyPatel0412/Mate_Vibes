import "package:flutter/material.dart";

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(text: "Posts", value: 39),
        buildDivider(),
        buildButton(text: "Following", value: 529),
        buildDivider(),
        buildButton(text: "Followers", value: 5834),
      ],
    );
  }

  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );
  Widget buildButton({
    required String text,
    required int value,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "$value",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: "Manrope"),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      );
}
