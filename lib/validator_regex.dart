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
}
