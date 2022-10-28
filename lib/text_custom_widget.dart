import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {

  final String text_title;
  final String data;

  TextCustom({required this.text_title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 20),

      child: Row(
          children: [
            Container(
              width: 100,
              child: Text(
                  this.text_title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,

                  )
              ),
            ),

            VerticalDivider(width: 30),
            Text(": " +
                this.data,
                style: TextStyle(
                  fontSize: 14,
                ))
          ]
      ),
    );
  }
}
