import 'package:committee_project/constant/Constants.dart';
import 'package:committee_project/provider/userProvider.dart';
import 'package:committee_project/ui/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/FilledButton.dart';
import '../utils/MyStyles.dart';
import '../utils/NormalInputfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNo = new TextEditingController();
  TextEditingController password = new TextEditingController();
  Future handleOnLoginClick(BuildContext context) async {
    var isLogin =
        await context.read<UserProvider>().login(phoneNo.text, password.text);

    if (isLogin) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          COMPANY_NAME,
          style: MyStyles.getTitleCompanyNameStyle(context),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              NormalInputField(
                controller: phoneNo,
                title: "Phone No.",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 10.0,
              ),
              NormalInputField(
                controller: password,
                title: "Password",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20.0,
              ),
              FilledButton(
                width: 120.0,
                title: "Login",
                onPressed: () => handleOnLoginClick(context),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
