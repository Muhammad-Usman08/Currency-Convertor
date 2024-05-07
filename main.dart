import 'dart:io';

void main() {
  print("Welcome to Currency Converter App");

  String endProgram = '';
  while (endProgram != 'yes') {
    // Taking input from user
    stdout.write('Enter Amount to Convert : ');
    dynamic userAmount = stdin.readLineSync();
    double userAmountParse = double.parse(userAmount!);

    // Taking currency name input from user
    print("Select Options");
    List currencyName = ['USD (United States Dollar)', 'EUR (Euro)', 'INR (Indian Rupee)', 'AED (Dirham)'];
    for (var i = 0; i < currencyName.length; i++) {
      print('$i. ${currencyName[i]}');
    }

    // taking input for select options
    stdout.write("Enter Option (Enter in number) : ");
    dynamic userOption = stdin.readLineSync();
    var userOptiontoParse = int.parse(userOption!);

    var convertedValue = converter(userAmountParse, userOptiontoParse);
    print('Converted Amount : $convertedValue');

    // Ask user if they want to end the program
    stdout.write("Do you want to end the program? (yes/no): ");
    endProgram = stdin.readLineSync()!;
  }

  print('End of the program');
}





dynamic converter(double userAmount, int userOption) {
  dynamic result = 0;
  if (userOption == 0) {
    result = '${userAmount * 0.0036 } USD';
  }
  else  if (userOption == 1) {
    result = '${ userAmount * 0.0033} EUR ';
  }
   else if (userOption == 2) {
    result = '${userAmount * 0.30} INR';
  }
  else if (userOption == 3) {
    result = '${userAmount * 0.013} AED' ;
  }
  else{
    print("Invalid Options");
  }
  return result;
}
