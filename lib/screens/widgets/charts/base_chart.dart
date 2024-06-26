import 'package:flutter/material.dart';

abstract class BaseChart {
  static double marginVertical = 30;

  static void createWords(
      {required Canvas canvas, required Size size, required List<double> numbers, required Color fontColor}) {
    size = Size(size.width - 10, size.height);
    for (int i = 0; i < numbers.length; i++) {
      TextPainter textPainter = TextPainter(
        textDirection: TextDirection.rtl,
        text: TextSpan(
            text: numbers[i].toString(), style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: fontColor)),
      )..layout(maxWidth: 40, minWidth: 0);

      textPainter.paint(canvas, Offset(size.width, (size.height / 100 * (100 - numbers[i]) + marginVertical / 4)));
    }
  }

  static void createWordsDynamicChart(
      {required Canvas canvas, required Size size, required List<double> numbers, required Color fontColor}) {
    size = Size(size.width - 10, size.height);

    for (int i = 0; i < numbers.length; i++) {
      TextPainter textPainter = TextPainter(
        textDirection: TextDirection.rtl,
        text: TextSpan(
            text: numbers[i].toStringAsFixed(2).toString(),
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: fontColor)),
      )..layout(maxWidth: 60, minWidth: 0);

      textPainter.paint(
          canvas, Offset(size.width, ((size.height * ((i) / (numbers.length - 1))) - (marginVertical / 4))));
    }
  }

  static double distanceCandle({required Size sizeChart, required int lengthList}) {
    return sizeChart.width * 0.3 / (lengthList);
  }

  static double sizeCandle({required Size sizeChart, required int lengthList}) {
    return (sizeChart.width * 0.7 / (lengthList));
  }
}
