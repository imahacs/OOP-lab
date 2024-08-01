import 'package:ansicolor/ansicolor.dart';

final AnsiPen blackPen = AnsiPen()..black();
final AnsiPen yellowPen = AnsiPen()..yellow();
final AnsiPen greenPen = AnsiPen()..green();

class PilPayment {
  String? paymentChoice;

  void showPaymentOptions() {
    print(greenPen("Select Payment Method:"));
    print("1. Cash");
    print("2. QR");
  }

  void selectPaymentMethod(int choice) {
    switch (choice) {
      case 1:
        paymentChoice = "Cash";
        break;
      case 2:
        paymentChoice = "QR";
        break;
      default:
        print(blackPen('............................................'));
        print(yellowPen("Invalid choice. Please try again."));
    }
  }

  void displayPaymentMethod() {
    if (paymentChoice == null) {
      print(blackPen('No payment method selected.'));
    } else {
      print(greenPen('Selected Payment Method: $paymentChoice'));
    }
  }
}
