// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class L10nMs extends L10n {
  L10nMs([String locale = 'ms']) : super(locale);

  @override
  String get submit => 'Hantar';

  @override
  String get errorFieldRequired => 'Medan ini wajib diisi';

  @override
  String errorPasswordMinLength(Object value) {
    return 'Kata laluan mestilah minimum $value aksara';
  }

  @override
  String get errorPasswordLowercase =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara huruf kecil';

  @override
  String get errorPasswordUppercase =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara huruf besar';

  @override
  String get errorPasswordNumber =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 nombor';

  @override
  String get errorPasswordSpecialCharacter =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara khas';

  @override
  String get next => 'Seterusnya';
}

/// The translations for Malay, as used in Malaysia (`ms_MY`).
class L10nMsMy extends L10nMs {
  L10nMsMy() : super('ms_MY');

  @override
  String get submit => 'Hantar';

  @override
  String get errorFieldRequired => 'Medan ini wajib diisi';

  @override
  String errorPasswordMinLength(Object value) {
    return 'Kata laluan mestilah minimum $value aksara';
  }

  @override
  String get errorPasswordLowercase =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara huruf kecil';

  @override
  String get errorPasswordUppercase =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara huruf besar';

  @override
  String get errorPasswordNumber =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 nombor';

  @override
  String get errorPasswordSpecialCharacter =>
      'Kata laluan mestilah mempunyai sekurang-kurangnya 1 aksara khas';

  @override
  String get next => 'Seterusnya';
}
