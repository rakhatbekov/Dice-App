import 'dart:developer';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/data/repositories/math_repo.dart';
import 'package:dice_app/data/services/math_services.dart';
import 'package:dice_app/widgets/dice_page_content.dart';

import 'package:flutter/material.dart';

import '../constants/textStyle/app_text_style.dart';

class DicePage extends StatefulWidget {
  const DicePage({
    Key key,
  }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftNumber = 2;
  int _rightNumber = 6;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    count++;
    log('Build ==> $count');
    return Scaffold(
       );
  }

  void _getRandomNumber() {
    _leftNumber = MathRepo.getRandomNumber();
    _rightNumber = MathService.getRandomNumber();
    setState(() {});
  }

  // void baskandaOzgort() {
  //   Random random = Random();
  //   setState(() {
  //     solJak = random.nextInt(6) + 1;
  //     onJak = random.nextInt(6) + 1;
  //   });
  // }
}
