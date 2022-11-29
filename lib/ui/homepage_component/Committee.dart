import 'package:committee_project/ui/CommitteeDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/MyStyles.dart';

class Committee extends StatelessWidget {
  final int? index;
  const Committee({super.key, @required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CommitteeDetailPage()),
          );
        },
        child: Card(
          elevation: 10.0,
          shadowColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),

            //set border radius more than 50% of height and width to make circle
          ),
          child: ListTile(
            title: Container(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#$index',
                        style: MyStyles.getCardHeadingStyle(context),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: const [
                          // Text(
                          //   'Active',
                          //   style: MyStyles.getCardHeadingStyle(context),
                          // ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 8.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "20 member |  15 month | Aug 2022 ",
                    style: MyStyles.getCardSmallHeadingStyle(context),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "1.05 Lakh",
                        style: MyStyles.getMainTextStyle(context),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "3 month Completed",
                    style: MyStyles.getCardSubHeadingStyle(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
