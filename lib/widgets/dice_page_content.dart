import 'package:dice_app/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

class DicePageContent extends StatelessWidget {
  const DicePageContent({
    Key key,
    @required this.onTap,
    @required this.leftNumber,
    @required this.rigthNumber,
  }) : super(key: key);

  final VoidCallback onTap;
  final int leftNumber;
  final int rigthNumber;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DiceWidget(
              onTap: onTap,
              diceNumber: leftNumber,
            ),
            const SizedBox(
              width: 15.0,
            ),
            DiceWidget(
              onTap: onTap,
              diceNumber: rigthNumber,
            )
          ],
        ),
      ),
    );
  }
}