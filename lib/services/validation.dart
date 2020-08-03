String emailValidator(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.length == 0) {
    return 'Field can not be empty';
  } else if (!regex.hasMatch(value)) {
    return 'Please enter a valid email address';
  } else {
    return null;
  }
}

String mobileValidate(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String passwordValidate(String value) {
  if (value.length == 0)
    return 'Field cannot be empty';
  else if (value.length < 8)
    return 'The passwords should have more than 8 characters';
  else {
    return null;
  }
}

String nameValidate(String value) {
  if (value.length == 0)
    return 'Field cannot be empty';
  else
    return null;
}
