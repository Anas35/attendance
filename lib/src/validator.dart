mixin Validator {
  String? teacherIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Teacher Id';
    }
    return null;
  }
  
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Name';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Email';
    }
    return null;
  }

  String? passwordValidtor(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    } else if (value.length < 8) {
      return 'Password should be of length 8';
    }
    return null;
  }

  String? dropdownValidator<T>(T? value) {
    if (value == null) {
      return 'Please Select $T';
    }
    return null;
  }

}
