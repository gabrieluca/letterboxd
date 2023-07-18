extension StringExtension on String? {
  bool get isEmptyOrNull {
    final string = this;
    return string == null || string.isEmpty;
  }

  bool get isNotEmptyOrNull => !isEmptyOrNull;
}
