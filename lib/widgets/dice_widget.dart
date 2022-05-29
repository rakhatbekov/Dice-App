import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
const DiceWidget({ Key key,@required this.onTap, @required this.diceNumber, }) ;
final VoidCallback onTap;
final int diceNumber;


  @override
  Widget build(BuildContext context){
    return  Expanded(
                child: InkWell(
                  onTap: onTap,
                  child: Image.asset(
                    'assets/images/dice$diceNumber.png',
                    color: AppColors.whiteDice,
                  ),
                ),
              );
  }
}