 

 import 'dart:math';

class MathService {
    Random random = Random();
   static int getRandomNumber() {
      return Random().nextInt(6) + 1;
    }
 }