import 'package:formz/formz.dart';

enum PasswordValidationError { invalid, empty, short }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  bool hasSpecialChar(String value) {
    final specialCharPattern = RegExp(r'[!@#%^&*() ]');
    return specialCharPattern.hasMatch(value);
  }

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }
    if (value.length <= 6) {
      return PasswordValidationError.short;
    }
    if (hasSpecialChar(value)) {
      return PasswordValidationError.invalid;
    }
    return null;
  }
}

extension Explanation on PasswordValidationError {
  String? get message {
    switch (this) {
      case PasswordValidationError.empty:
        return "Password kosong!";
      case PasswordValidationError.invalid:
        return "Password tidak valid!";
      case PasswordValidationError.short:
        return "Password minimal 6 kata";
      default:
        return null;
    }
  }
}
