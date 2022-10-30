import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {

  final String textTitle;
  final String data;

  const TextCustom({super.key, required this.textTitle, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),

      child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                  textTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,

                  )
              ),
            ),

            const VerticalDivider(width: 30),
            Text(": $data",
                style: const TextStyle(
                  fontSize: 14,
                ))
          ]
      ),
    );
  }
}
