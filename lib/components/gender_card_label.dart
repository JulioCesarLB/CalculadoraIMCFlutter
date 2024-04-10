import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icone;
  final String text;
  const GenderCard({super.key, required this.icone, required this.text} );

  @override
  Widget build(BuildContext context) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icone, size: 90),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          text,
                          style: labelTextStyle,
                        )
                      ],
                    );
  }
}