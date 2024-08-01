import 'dart:io';

import 'package:ansicolor/ansicolor.dart';

final AnsiPen blackPen = AnsiPen()..black();
final AnsiPen yellowpen = AnsiPen()..yellow();

class PilPayment {
  var paymentChoice = '';

  void showPaymentOptions() {
    print("Selecte Payment Method :");
    print("1. Cash");
    print("2. Qr");
  }

  void selectPaymentMethod(int choice) {
    switch (choice) {
      case 1:
        paymentChoice = "Cash";
        break;
      case 2:
        paymentChoice = "Qr";
        break;
      default:
        print(blackPen('............................................'));

        print(yellowpen("Invalid choice. Please try again."));
    }
  }

  void displayPaymentMethod() {
    if (paymentChoice == null) {
      print('No payment method selected.');
    } else {
      print('Selected Payment Method: $paymentChoice');
    }
  }
}