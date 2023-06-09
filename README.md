<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Validator_regex

Validator is a Dart package that provides simple and convenient methods to validate common input data such as emails, URLs, and IP addresses. This package can be particularly useful in situations where you need to validate user input in your Flutter application.

## Features

- Email validation: Checks whether a given string matches the standard format for an email address.
- URL validation: Determines whether a given string is a well-formed URL.
- IP Address validation: Validates that a string is a correctly formatted IP address, supporting both IPv4 and IPv6 formats.
- Digits validation: Checks whether a string only contains digits, optionally validating decimals and fractions.
- Alphanumeric validation: Checks whether a string only contains alphanumeric characters, optionally including spaces.
- Password strength validation: Validates the strength of a password, ensuring it contains a mix of characters and is of sufficient length.
- Credit Card validation: Checks whether a given string matches the format for a credit card number.

## Getting started

### Prerequisites

- Flutter: For installing Flutter and setting up the Dart SDK, follow the instructions provided on the [Flutter website](https://flutter.dev/).
- Dart: Ensure you have the Dart SDK installed and setup. If you have installed Flutter, Dart should already be installed.

### Installation

Add `validator` to your `pubspec.yaml` file:

```yaml
dependencies:
  validator: ^latest_version
```

Then, run

```bash
flutter pub get
```

to fetch the package.

## Usage

You can use the methods provided by the Validator class to validate emails, URLs, and IP addresses:

```dart
import 'package:validator_regex/validator_regex.dart';

// For Email
bool isEmailValid = Validator.email('test@test.com');

// For URL
bool isUrlValid = Validator.url('https://www.test.com');

// For IP Address
bool isIpValid = Validator.ipAddress('192.168.1.1'); //IPv4

// For Digits
bool areDigitsValid = Validator.digits('123', whole: true);

// For Alphanumeric
bool isAlphanumericValid = Validator.alphanumeric('abc123', withSpace: false);

// For Password
bool isPasswordValid = Validator.moderatePassword('Passw0rd!');

// For Credit Card
bool isCardValid = Validator.creditCard('4111111111111111');


```

## Additional information

For more detailed examples and usage, please refer to the [example](https://github.com/sidx8/validator/tree/main/example) directory.

If you find any bugs or issues, please file them on the [issue tracker](https://github.com/sidx8/validator/issues).

We welcome contributions! If you would like to contribute to the project, feel free to fork the repository and submit a pull request.

For any questions or additional information, you can reach us via our GitHub profiles.

## Support

If you are having issues with the project, please let me know. i have an email, siddharth0sinha@gmail.com, where you can reach out to me.
