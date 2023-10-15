import 'package:formz/formz.dart';

enum NameError { empty, invalid }

class Username extends FormzInput<String, NameError> {
  const Username.pure([String value = '']) : super.pure(value);
  const Username.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  NameError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return NameError.empty;
    }
    return _nameRegExp.hasMatch(value) && value.length < 10
        ? null
        : value.isEmpty
        ? null
        : NameError.invalid;
  }
}

extension Explanation on NameError {
  String? get name {
    switch (this) {
      case NameError.invalid:
        return "Username tidak valid!";
      default:
        return null;
    }
  }
}