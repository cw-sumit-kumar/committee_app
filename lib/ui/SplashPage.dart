import 'package:committee_project/constant/Constants.dart';
import 'package:committee_project/ui/HomePage.dart';
import 'package:flutter/material.dart';

import '../utils/MyStyles.dart';
import 'LoginPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() {
    Future.delayed(
        Duration(seconds: 0),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: Text(
              COMPANY_NAME,
              style: MyStyles.getTitleCompanyNameStyle(context),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets\\images\\splash_icon.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(28.0),
                  child: Center(
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.'),
                  ),
                ),
                CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
