import 'dart:math';

void main() {
  print(Numbers.maxNumber);
  print(Numbers.getDefaultNumbers());

  Numbers numbers1 = Numbers(startNumber: 1, endNumber: 30);
  // numbers.maxNumber; 접근 불가, 인스턴스와 static은 별개이다.
  print(numbers1.getNumbers());

  Numbers.interval = 3;

  Numbers numbers2 = Numbers(startNumber: 1, endNumber: 30);
  print(numbers2.getNumbers());
}

class Numbers {
  late int startNumber;
  late int endNumber;

  // 최대 범위 static const
  static const int maxNumber = 50;
  // 숫자간 간격 static var
  static int interval = 1;

  Numbers({startNumber = 0, endNumber = maxNumber}) {
    this.startNumber = min(maxNumber, startNumber);
    this.endNumber = min(maxNumber, endNumber);
  }

  List<int> getNumbers() {
    return List.generate((endNumber - startNumber + 1) ~/ interval,
        (index) => startNumber + index * interval);
  }

  static List<int> getDefaultNumbers() {
    return List.generate(maxNumber, (index) => index + 1);
  }
}
