import 'package:flutter/material.dart';

class NormalInputField extends StatelessWidget {
  TextEditingController? controller;
  String title;
  TextInputType keyboardType;
  int? maxLength;
  int minLine;
  NormalInputField(
      {this.controller,
      this.title = '',
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.minLine = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,
        minLines: minLine,
        maxLines: minLine,
        // focusNode: focusNode,
        decoration: InputDecoration(
          hintText: "$title",
          
          hintStyle: TextStyle(color: Theme.of(context).primaryColor),
          contentPadding: EdgeInsets.only(left: 10.0, bottom: 0.0, top: 0.0),
        ),

        // keyboardType: keyboardType,
        // maxLines: maxLine,
        // onChanged: (val) {
        //   submitVal(val);
        // },
      ),
    );
  }
}
