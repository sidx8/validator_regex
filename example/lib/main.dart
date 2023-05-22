// Import the validator package
import 'package:validator_regex/validator_regex.dart';

void main() {
  // Test email validation
  var email = "test@example.com";
  var isValidEmail = Validator.email(email);
  print('Is "$email" a valid email? $isValidEmail');

  // Test URL validation
  var url = "https://www.example.com";
  var isValidUrl = Validator.url(url);
  print('Is "$url" a valid URL? $isValidUrl');

  // Test IP address validation
  var ipAddress = "192.168.1.1";
  var isValidIpAddress = Validator.ipAddress(ipAddress);
  print('Is "$ipAddress" a valid IP address? $isValidIpAddress');
}
