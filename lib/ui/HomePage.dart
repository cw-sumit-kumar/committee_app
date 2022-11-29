import 'package:committee_project/ui/homepage_component/Committee.dart';
import 'package:committee_project/utils/MyStyles.dart';
import 'package:flutter/material.dart';
import '../utils/CircularChart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, double> activeCommitteeDataMap = {
    "ActiveCommittee": 5,
  };
  Map<String, double> transactionDataMap = {
    "PendingInstament": 2,
  };
  bool isStretched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 300.0,
            backgroundColor: Theme.of(context).backgroundColor,
            title: Container(
              child: Text(
                " Indian Committee",
                style: MyStyles.getHeaderTextStyle(context),
              ),
            ),
            flexibleSpace: Container(
                margin: EdgeInsets.all(10),
                child: FlexibleSpaceBar(
                  background: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: Material(
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Theme.of(context).primaryColor),
                              child: Column(
                                children: [],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularChart(
                                dataMap: this.activeCommitteeDataMap,
                                totalValue: 6,
                                currentValue: 5,
                                centerText: "Active Committee",
                              ),
                              CircularChart(
                                dataMap: this.transactionDataMap,
                                totalValue: 3,
                                currentValue: 1,
                                centerText: "Unpaid Installment",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          //3
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Committee(index: index);
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
