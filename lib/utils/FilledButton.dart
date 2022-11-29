import 'package:committee_project/utils/MyStyles.dart';
import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final double width;
  FilledButton(
      {this.title = "", this.onPressed, this.width = double.maxFinite});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppDecoation.backgroundLoginPage(),
      child: MaterialButton(
        minWidth: width,
        height: 50.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: this.onPressed,
        color: Theme.of(context).primaryColor,
  
        child: Text(
          title,
          style: MyStyles.buttonTextStyle(context),
        ),
      ),
    );
  }
}
