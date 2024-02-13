import 'dart:developer';
import 'dart:io';

import 'loginSignUpChecking.dart';
import 'signup_page.dart.dart';

void main() {
  display();
  accountChosing();
}

display() {
  print("==================================================================");
  print("         WELCOME TO THE SELECTION COMMISSION OF PAKISTAN          ");
  print("==================================================================");
  print("------------------------------------------------------------------");
  print('                            SELECTION 2024                        ');
  print("------------------------------------------------------------------");
  print('Before starting this, please Login or Signup!\n\n');
}

accountChosing() {
  print("Please Select 1 option from the before list:");
  print("Enter 'U' for User.");
  print("Enter 'A' for Admin.");
  String option = stdin.readLineSync()!;
  if (option == 'U' || option == 'u') {
    print("User!");
    LoginSignUpChecking loginSignUpCheckingForUser = LoginSignUpChecking();
    loginSignUpCheckingForUser.loginSignupSelection();
  } else if (option == 'A' || option == 'a') {
    LoginSignUpChecking loginSignUpCheckingForAdmin = LoginSignUpChecking();
loginSignUpCheckingForAdmin.loginSignupSelection();
    print("Admin!");
  } else {
    print("Wrong Letter pressed!");
    print("Enter the letter form the Given Options");
    accountChosing();
  }
}
