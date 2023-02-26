import 'dart:io';

main() {
  appTitle();
  printToday();
  calculatorMethod();
}

calculatorMethod() {
  print('enter first number:');
  num num1 = num.parse(stdin.readLineSync()!);
  print('enter second number:');
  num num2 = num.parse(stdin.readLineSync()!);
  print("enter the opreters: (+ ,  *  , / )");
  var opreters = stdin.readLineSync()!;

  if (num1.toString() == "Exit" || opreters == "Exit") {
    makeSpace(2);
    print("see you next time!! 😎 ");
    makeSpace(2);
    return;
  } else if (opreters == "+") {
    print("The Result ${num1 + num2}");
  } else if (opreters == "*") {
    print("The Result ${num1 * num2}");
  } else if (opreters == "/") {
    print("The Result ${num1 + num2}");
  }
  calculatorMethod();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

appTitle() {
  makeSpace(2);
  print(" Welcome To Calculator App 🤩 ");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}
