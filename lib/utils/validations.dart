// Email Validator
String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

// Password Validator
String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}

// Name Validator
String? nameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your name';
  }
  if (value.length < 3) {
    return 'Name must be at least 3 characters long';
  }
  return null;
}

// Password Confirmation
String? passwordConfirmationValidator(String? value, String? originalPassword) {
  if (value == null || value.isEmpty) {
    return 'Please confirm your password';
  }
  if (value != originalPassword) {
    return 'Passwords do not match';
  }
  return null;
}

// Phone Number Validator
String? phoneNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your phone number';
  }
  final phoneRegex = RegExp(r'^\d{10}$');
  if (!phoneRegex.hasMatch(value)) {
    return 'Please enter a valid phone number';
  }
  return null;
}

// Address Validator
String? addressValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your address';
  }
  if (value.length < 10) {
    return 'Address must be at least 10 characters long';
  }
  return null;
}

// Search Validator
String? searchValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a search term';
  }
  if (value.length < 3) {
    return 'Search term must be at least 3 characters long';
  }
  return null;
}
