import 'package:formz/formz.dart';

enum NameError { empty, invalid, short }

class TextFieldFormz extends FormzInput<String?, NameError> {
  const TextFieldFormz.pure([String? value]) : super.pure(value);

  const TextFieldFormz.dirty([String value = '']) : super.dirty(value);

  bool hasSpecialChar(String value) {
    final specialCharPattern = RegExp(r'[!@#%^&*()]');
    return specialCharPattern.hasMatch(value);
  }

  @override
  NameError? validator(String? value) {
    if (value?.isEmpty == true || value == "") {
      return NameError.empty;
    }
    if (hasSpecialChar(value ?? "")) {
      return NameError.invalid;
    }
    return null;
  }
}

extension Explanation on NameError {
  String? get message {
    switch (this) {
      case NameError.empty:
        return "Mohon isi terlebih dahulu!";
      case NameError.invalid:
        return "Isi tidak valid!";
      default:
        return null;
    }
  }
}
