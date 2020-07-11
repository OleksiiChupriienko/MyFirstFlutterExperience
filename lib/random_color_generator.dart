import 'dart:math' as math;
import 'package:flutter/material.dart';

class RandomColorGenerator {
  Color generate() {
    final random = math.Random();
    int generateRandomColorComponentValue() {
      return random.nextInt(255);
    }
    return Color.fromARGB(generateRandomColorComponentValue(),
        generateRandomColorComponentValue(),
        generateRandomColorComponentValue(),
        generateRandomColorComponentValue());
  }
}