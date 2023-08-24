import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textstyle;
  final VoidCallback? callBack;

  RoundedButton({required this.btnname,
    this.icon,
    this.bgcolor = Colors.blue,
    this.textstyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            )),
        onPressed: () {
          callBack!();
        },
        child: icon != null ? Row(
          children: [
            icon!,
            Text(btnname, style: textstyle,),
          ],
    ):Row(
          children: [
            Text(btnname, style: textstyle,),
          ],
        ));
  }
}
