import 'package:flutter/material.dart';
import 'package:mobile_banking_app/widgets/circle_avatar_card.dart';

class UseDigitalPaymentmethod extends StatelessWidget {
  const UseDigitalPaymentmethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Use Digital Payment Method'),
                Row(
                  children: const [Text("Load More"), Icon(Icons.arrow_right)],
                ),
              ],
            ),
            SizedBox(
              height: 110,
              width: double.infinity,
              //  color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CircleAvatarCard(
                      cardTitle: 'Electricity', cardicon: Icons.electric_meter),
                  CircleAvatarCard(cardTitle: 'Revenue', cardicon: Icons.money),
                  CircleAvatarCard(
                      cardTitle: 'AirLines', cardicon: Icons.airplanemode_on),
                  CircleAvatarCard(
                      cardTitle: 'Khanepani', cardicon: Icons.water),
                  CircleAvatarCard(
                      cardTitle: 'ISP', cardicon: Icons.open_in_browser),
                  CircleAvatarCard(cardTitle: 'Tv Payment', cardicon: Icons.tv),
                  CircleAvatarCard(
                      cardTitle: 'Insurance', cardicon: Icons.payment),
                  CircleAvatarCard(cardTitle: 'Bus', cardicon: Icons.bus_alert),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
