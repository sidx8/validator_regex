import 'package:flutter_test/flutter_test.dart';
import 'package:validator_regex/validator_regex.dart';

void main() {
  test('Email Validation', () {
    expect(Validator.email('test@test.com'), true);
    expect(Validator.email('test@test'), false);
    expect(Validator.email('test.com'), false);
  });

  test('URL Validation', () {
    expect(Validator.url('https://www.test.com'), true);
    expect(Validator.url('http://www.test.com'), true);
    expect(Validator.url('www.test.com'), false);
  });

  test('IP Address Validation', () {
    expect(Validator.ipAddress('192.168.1.1'), true); //IPv4
    expect(Validator.ipAddress('255.255.255.255'), true); //IPv4
    expect(Validator.ipAddress('255.255.255.256'), false); //IPv4
    expect(Validator.ipAddress('2001:0db8:85a3:0000:0000:8a2e:0370:7334'),
        true); //IPv6
    expect(Validator.ipAddress('2001:0db8:85a3:0000:0000:8a2e:0370:733Z'),
        false); //IPv6
  });

  test('Digits Validation', () {
    expect(Validator.digits('123', whole: true), true);
    expect(Validator.digits('123.456', decimal: true), true);
    expect(Validator.digits('1/2', fractions: true), true);
    expect(Validator.digits('123abc', whole: true), false);
  });

  test('Alphanumeric Validation', () {
    expect(Validator.alphanumeric('abc123', withSpace: false), true);
    expect(Validator.alphanumeric('abc 123', withSpace: true), true);
    expect(Validator.alphanumeric('abc-123', withSpace: false), false);
  });

  test('Moderate Password Validation', () {
    expect(Validator.moderatePassword('Passw0rd!'), true);
    expect(Validator.moderatePassword('password'), false);
    expect(Validator.moderatePassword('Password'), false);
    expect(Validator.moderatePassword('Password1'), true);
  });
}
