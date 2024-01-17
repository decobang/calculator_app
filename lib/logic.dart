import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

ValueNotifier<String> displayValue = ValueNotifier<String>(" ");

void updateDisplayValue(String value) {
  // Check if the last character in displayValue is an operand and the new value is the same operand
  if (displayValue.value.isNotEmpty &&
      isOperand(displayValue.value[displayValue.value.length - 1]) &&
      value == displayValue.value[displayValue.value.length - 1]) {
    // Don't update displayValue
  } else {
    displayValue.value += value;
  }
}

bool isOperand(String value) {
  return value == '+' || value == '-' || value == '*' || value == '/';
}

void calculate() {
  Parser p = Parser();
  Expression exp = p.parse(displayValue.value);
  ContextModel cm = ContextModel();

  // Check if the expression is a division operation and the denominator is zero
  if (displayValue.value.contains('/') &&
      (exp.evaluate(EvaluationType.REAL, cm) == 0)) {
    displayValue.value = "can't divide by zero silly!";
  } else {
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    displayValue.value = eval.toString();
  }
}

void clear() {
  displayValue.value = ' ';
}

void deleteLastCharacter() {
  if (displayValue.value.length > 1) {
    displayValue.value =
        displayValue.value.substring(0, displayValue.value.length - 1);
  } else if (displayValue.value == ' ') {
    // Do nothing if the last character is a space
  } else {
    displayValue.value = ' ';
  }
}
