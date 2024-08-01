import 'dart:io';
import 'pilpay.dart';

void main() {
  stdout.write('Enter your choice (1 or 2): ');
  int choice = int.parse(stdin.readLineSync()!);
  print(blackPen("------------------------------------------------------"));

  PilPayment pil = PilPayment();
  pil.showPaymentOptions();
  pil.selectPaymentMethod(choice);
  pil.displayPaymentMethod();
}
