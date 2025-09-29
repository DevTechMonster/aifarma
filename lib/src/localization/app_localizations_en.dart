// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get submit => 'Submit';

  @override
  String get errorFieldRequired => 'This field is required';

  @override
  String errorPasswordMinLength(Object value) {
    return 'Passoword must be minimum $value characters';
  }

  @override
  String get errorPasswordLowercase =>
      'Password must be at least 1 lowercase character';

  @override
  String get errorPasswordUppercase =>
      'Password must be at least 1 uppercase character';

  @override
  String get errorPasswordNumber => 'Password must have at least 1 number';

  @override
  String get errorPasswordSpecialCharacter =>
      'Password must at least have 1 special character';

  @override
  String get next => 'Next';
}

/// The translations for English, as used in Malaysia (`en_MY`).
class L10nEnMy extends L10nEn {
  L10nEnMy() : super('en_MY');

  @override
  String get submit => 'Submit';

  @override
  String get errorFieldRequired => 'This field is required';

  @override
  String errorPasswordMinLength(Object value) {
    return 'Passoword must be minimum $value characters';
  }

  @override
  String get errorPasswordLowercase =>
      'Password must be at least 1 lowercase character';

  @override
  String get errorPasswordUppercase =>
      'Password must be at least 1 uppercase character';

  @override
  String get errorPasswordNumber => 'Password must have at least 1 number';

  @override
  String get errorPasswordSpecialCharacter =>
      'Password must at least have 1 special character';

  @override
  String get next => 'Next';
}
