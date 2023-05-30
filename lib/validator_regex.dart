library validator;

/// A utility class for validating email addresses, URLs, and IP addresses.
class Validator {
  /// Validates whether the given [email] is a valid email address.
  ///
  /// The [email] parameter should be a string representing an email address.
  ///
  /// Returns `true` if the [email] is valid, `false` otherwise.
  static bool email(String email) {
    String emailRegEx =
        r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9.]{2,}$';
    RegExp regExp = RegExp(emailRegEx);
    return regExp.hasMatch(email);
  }

  /// Validates whether the given [url] is a valid URL.
  ///
  /// The [url] parameter should be a string representing a URL.
  ///
  /// Returns `true` if the [url] is valid, `false` otherwise.
  static bool url(String url) {
    String pattern = r'^(http|https):\/\/([\w.]+)+(:[0-9]{1,5})?(\/.*)?$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(url);
  }

  /// Validates whether the given [ip] is a valid IP address.
  ///
  /// The [ip] parameter should be a string representing an IP address.
  ///
  /// Returns `true` if the [ip] is valid, `false` otherwise.
  static bool ipAddress(String ip) {
    String pattern =
        r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$' //IPv4
        r'|' // OR
        r'^((([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])))$'; //IPv6
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(ip);
  }

  /// Validates whether the given [input] contains only digits.
  ///
  /// The [input] parameter should be a string representing a number.
  /// The [decimal] parameter allows decimal numbers.
  /// The [whole] parameter allows only whole numbers.
  /// The [fractions] parameter allows fraction numbers.
  ///
  /// Returns `true` if the [input] matches the pattern, `false` otherwise.
  static bool digits(String input,
      {bool decimal = false, bool whole = false, bool fractions = false}) {
    String pattern;
    if (whole) {
      pattern = r'^\d+$';
    } else if (decimal) {
      pattern = r'^\d*\.\d+$';
    } else if (fractions) {
      pattern = r'[-]?[0-9]+[,.]?[0-9]*([\/][0-9]+[,.]?[0-9]*)*';
    } else {
      pattern = r'^\d*(\.\d+)?$';
    }
    return RegExp(pattern).hasMatch(input);
  }

  /// Validates whether the given [input] is alphanumeric.
  ///
  /// The [input] parameter should be a string.
  /// The [withSpace] parameter allows the input string to contain spaces.
  ///
  /// Returns `true` if the [input] is alphanumeric, `false` otherwise.
  static bool alphanumeric(String input, {bool withSpace = false}) {
    String pattern = withSpace ? r'^[a-zA-Z0-9 ]*$' : r'^[a-zA-Z0-9]*$';
    return RegExp(pattern).hasMatch(input);
  }

  /// Validates whether the given [password] is moderate according to a predefined pattern.
  ///
  /// The [password] parameter should be a string.
  ///
  /// The pattern requires at least one digit, one uppercase letter,
  /// one lowercase letter, and the total length of at least 8 characters.
  ///
  /// Returns `true` if the [password] is moderate, `false` otherwise.
  static bool moderatePassword(String password) {
    String pattern =
        r'(?=(.*[0-9]))((?=.*[A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z]))^.{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(password);
  }

  /// Validate string as a username.
  ///
  /// The [str] parameter should be a string representing a username.
  ///
  /// Returns `true` if the [str] is valid, `false` otherwise.
  static bool username(String str) {
    String pattern = r'^[a-z0-9_-]{3,16}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(str);
  }

  /// Validate string as a date.
  ///
  /// The [str] parameter should be a string representing a date in the YYYY-MM-dd format.
  ///
  /// Returns `true` if the [str] is valid, `false` otherwise.
  static bool dateFormatYYYYMMDD(String str) {
    String pattern = r'/([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(str);
  }

  /// Validate string as a date.
  ///
  /// The [str] parameter should be a string representing a date in the dd-MM-YYYY format.
  ///
  /// Returns `true` if the [str] is valid, `false` otherwise.
  static bool dateFormatDDMMYYYY(String str) {
    String pattern =
        r'/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(str);
  }

  /// Validates whether the given [cardNumber] is a valid Visa card number.
  ///
  /// The [cardNumber] parameter should be a string representing a Visa card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool visaCard(String cardNumber) {
    String pattern = r'^4[0-9]{12}(?:[0-9]{3})?$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid MasterCard number.
  ///
  /// The [cardNumber] parameter should be a string representing a MasterCard number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool masterCard(String cardNumber) {
    String pattern =
        r'^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid American Express card number.
  ///
  /// The [cardNumber] parameter should be a string representing an American Express card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool americanExpressCard(String cardNumber) {
    String pattern = r'^3[47][0-9]{13}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid Diners Club card number.
  ///
  /// The [cardNumber] parameter should be a string representing a Diners Club card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool dinersClubCard(String cardNumber) {
    String pattern = r'^3(?:0[0-5]|[68][0-9])[0-9]{11}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid Discover card number.
  ///
  /// The [cardNumber] parameter should be a string representing a Discover card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool discoverCard(String cardNumber) {
    String pattern = r'^6(?:011|5[0-9]{2})[0-9]{12}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid JCB card number.
  ///
  /// The [cardNumber] parameter should be a string representing a JCB card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool jcbCard(String cardNumber) {
    String pattern = r'^(?:2131|1800|35\d{3})\d{11}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }

  /// Validates whether the given [cardNumber] is a valid card number for any type.
  ///
  /// The [cardNumber] parameter should be a string representing a card number.
  ///
  /// Returns `true` if the [cardNumber] is valid, `false` otherwise.
  static bool anyCard(String cardNumber) {
    String pattern =
        r'^(?:4[0-9]{12}(?:[0-9]{3})?|(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|6(?:011|5[0-9]{2})[0-9]{12}|(?:2131|1800|35\d{3})\d{11})$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cardNumber);
  }
}
