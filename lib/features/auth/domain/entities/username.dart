import 'package:formz/formz.dart';

enum NameError { empty, invalid,short }

class Username extends FormzInput<String, NameError> {
  const Username.pure([String value = '']) : super.pure(value);
  const Username.dirty([String value = '']) : super.dirty(value);

  // static final RegExp _nameRegExp = RegExp(
  //   r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  // );
  bool hasSpecialChar(String value) {
    final specialCharPattern = RegExp(r'[!@#%^&*() ]');
    return specialCharPattern.hasMatch(value);
  }


  @override
  NameError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return NameError.empty;
    }
    if (hasSpecialChar(value)) {
      return NameError.invalid;
    }
    return  value.length < 5
        ? NameError.short
        : null;
  }
}

extension Explanation on NameError {
  String? get message {
    switch (this) {
      case NameError.short:
        return "Username minimal 5 kata";
      case NameError.empty:
        return "Username kosong!";
      case NameError.invalid:
        return "Username tidak valid!";
      default:
        return null;
    }
  }
}