import 'package:flutter/material.dart';
import 'package:mobile_banking_app/model/account_activity_model.dart';

class AccountActivityWidget extends StatelessWidget {
  const AccountActivityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "ACCOUNT ACTIVITIES",
            style: TextStyle(color: Colors.white),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: accountActivityList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                    accountActivityList[index].title,
                  ),
                  subtitle: Text(accountActivityList[index].date),
                  trailing: Text(
                    accountActivityList[index].amount.toString(),
                    style: TextStyle(
                        color: accountActivityList[index].textColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
