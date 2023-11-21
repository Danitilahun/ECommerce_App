class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    // Regular expressions for letters, numbers, and special characters
    RegExp letterRegex = RegExp(r'[a-zA-Z]');
    RegExp digitRegex = RegExp(r'\d');
    RegExp specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (!letterRegex.hasMatch(value)) {
      return 'Password must contain at least one letter';
    }

    if (!digitRegex.hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    if (!specialCharRegex.hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^[0-9]+$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }
}
