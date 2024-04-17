import 'dart:ffi';

import '../constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
 final void Function(double) onChanged;//função que vai ser recebida no calculadora_page
final int altura;

  const SliderAltura({super.key, required this.altura, required this.onChanged });
  @override
  Widget build(BuildContext context) {
    double valor= 120;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              altura.toString(),
              style: numberTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          value: altura.toDouble(),
          onChanged: (double value) {
            onChanged(value); //função definida lá em cima por conta do  statelesswidget
          },
        )
      ],
    );
  }
}
