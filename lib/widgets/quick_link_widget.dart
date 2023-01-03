import 'package:flutter/material.dart';
import 'package:mobile_banking_app/model/quick_link_model.dart';
import 'package:mobile_banking_app/screeens/home_page.dart';
import 'package:mobile_banking_app/widgets/quick_links_card.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Quick Links",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: listOfQuickLinks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return QuickLinksCard(
                      title: listOfQuickLinks[index].title,
                      icon: listOfQuickLinks[index].icon,
                      onTap: listOfQuickLinks[index].onPressed,
                    );
                  },
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}
