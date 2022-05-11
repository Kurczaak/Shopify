extension StringifyCategoriesX on Enum {
  String get stringify => name.replaceRange(0, 1, name[0].toUpperCase());
}
