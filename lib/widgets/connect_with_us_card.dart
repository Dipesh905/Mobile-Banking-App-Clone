import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectWithUsCard extends StatelessWidget {
  const ConnectWithUsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Connect With Us",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.facebook)),
            ),
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.twitter)),
            ),
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.linkedin)),
            ),
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.instagram)),
            )
          ],
        )
      ],
    );
  }
}
