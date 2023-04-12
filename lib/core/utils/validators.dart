class CustomValidators {
  static securePassword(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value.length < 8) {
      return 'Password must be 8 characters length';
    }
    // Regex validator
  }
}
