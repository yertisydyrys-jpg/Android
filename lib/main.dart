import 'package:flutter/material.dart';

void main() {
  //1
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print('$i * $j = ${i * j}');
    }
  }

  // Task 2
  int dayNumber = 31;
  int monthNumber = 15;
  int yearNumber = 2025;
  int daysInMonth;
  if (monthNumber == 2) {
    if (yearNumber % 400 == 0 ||
        (yearNumber % 4 == 0 && yearNumber % 100 != 0)) {
      daysInMonth = 29;
    } else {
      daysInMonth = 28;
    }
  } else if (monthNumber == 4 ||
      monthNumber == 6 ||
      monthNumber == 9 ||
      monthNumber == 11) {
    daysInMonth = 30;
  } else {
    daysInMonth = 31;
  }
  if (monthNumber < 1 ||
      monthNumber > 12 ||
      dayNumber < 1 ||
      dayNumber > daysInMonth) {
    print("invalid date");
  } else {
    dayNumber++;

    if (dayNumber > daysInMonth) {
      dayNumber = 1;
      monthNumber++;

      if (monthNumber > 12) {
        monthNumber = 1;
        yearNumber++;
      }
    }

    print("$dayNumber.$monthNumber.$yearNumber");
  }
  // 3
  String word = 'flutter mobile development';
  int countVowels = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] == 'a' ||
        word[i] == 'e' ||
        word[i] == 'i' ||
        word[i] == 'o' ||
        word[i] == 'u') {
      countVowels++;
    }
  }
  print('Count: $countVowels');


// 4
  List<int> numbers = [14, 88, 3, 42, 99, 12, 67];
  int min = numbers[0];
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }

    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  print('max: $max, min: $min');


// 5
  int number = 11;
  int count = 0;
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      count++;
    }
  }
  if (count == 2) {
    print('$number - prime number');
  } else {
    print('$number - not prime number');
  }
}




