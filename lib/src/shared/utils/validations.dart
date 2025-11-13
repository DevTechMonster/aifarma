final emailRegex = RegExp(
  r"^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$",
  caseSensitive: false,
);

bool isValidURL(String urlString) {
  final urlRegExp = RegExp(
    r'^(http(s)?:\/\/)?((w{3}\.)?)([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,}(\.[a-zA-Z]{2,})?(\/\S*)?$',
  );
  return urlRegExp.hasMatch(urlString);
}

/// Checks if password has minLength
bool hasMinLength(String password, int minLength) {
  return password.length >= minLength;
}

/// Checks if password has at least 1 uppercase letter matches
bool hasMinLowercase(String password) {
  String pattern = '^(.*?[a-z]){1,}';
  return password.contains(RegExp(pattern));
}

/// Checks if password has at least 1 uppercase letter matches
bool hasMinUppercase(String password) {
  String pattern = '^(.*?[A-Z]){1,}';
  return password.contains(RegExp(pattern));
}

/// Checks if password has at least 1 numeric character matches
bool hasMinNumericChar(String password) {
  String pattern = '^(.*?[0-9]){1,}';
  return password.contains(RegExp(pattern));
}

//Checks if password has at least 1 special character matches
bool hasMinSpecialChar(String password) {
  String pattern = r"^(.*?[$&+,\:;/=?@#|'<>.^*()_%!-]){1,}";
  return password.contains(RegExp(pattern));
}
