import 'package:formz/formz.dart';

enum RePasswordValidationError { invalid,  empty, short  }

class RePassword extends FormzInput<String, RePasswordValidationError> {
  const RePassword.pure() : super.pure('');
  const RePassword.dirty([String value = '']) : super.dirty(value);

  bool hasSpecialChar(String value) {
    final specialCharPattern = RegExp(r'[!@#%^&*() ]');
    return specialCharPattern.hasMatch(value);
  }

  @override
  RePasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return RePasswordValidationError.empty;
    }
    if (value.length < 6) {
      return RePasswordValidationError.short;
    }
    if (hasSpecialChar(value)) {
      return RePasswordValidationError.invalid;
    }
    return null;
  }
}

extension Explanation on RePasswordValidationError {
  String? get message {
    switch (this) {
      case RePasswordValidationError.empty:
        return "RePassword kosong!";
      case RePasswordValidationError.invalid:
        return "RePassword tidak valid!";
      case RePasswordValidationError.short:
        return "RePassword minimal 6 kata";
      default:
        return null;
    }
  }
}