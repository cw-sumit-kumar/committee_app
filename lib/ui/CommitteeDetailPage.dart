import 'package:flutter/material.dart';
import '../utils/MyStyles.dart';

class CommitteeDetailPage extends StatefulWidget {
  const CommitteeDetailPage({super.key});

  @override
  State<CommitteeDetailPage> createState() => _CommitteeDetailPageState();
}

class _CommitteeDetailPageState extends State<CommitteeDetailPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> paymentsUI = [];
    paymentsUI.add(Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Theme.of(context).primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#43215',
                style: MyStyles.getHeaderTextStyle(context),
              ),
              Text(
                '1 lakh 20 member committee',
                style: MyStyles.getHeadersubTextStyleSmall(context),
              ),
              Text(
                'Amount : 1,00,000',
                style: MyStyles.getHeadersubTextStyleSmall(context),
              ),
              Text(
                'Member : 20',
                style: MyStyles.getHeadersubTextStyleSmall(context),
              ),
            ],
          ),
        ),
      ),
    ));
    for (int i = 0; i < 10; i++) {
      paymentsUI.add(Card(
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
                      'July 2022 | 1 month',
                      style: MyStyles.getCardHeadingStyle(context),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: const [
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
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "EMI : 4,000",
                      style: MyStyles.getMainTextStyle(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Loss : 20,000",
                  style: MyStyles.getCardSmallHeadingStyle(context),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Committee Details"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(child: ListView(children: paymentsUI)));
  }
}
