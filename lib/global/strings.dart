extension Strings on String {
  String get toTitleCase {
    return this[0].toUpperCase() + substring(1);
  }

  String get toSentenceCase {
    return '${this[0].toUpperCase()}${substring(1)}.';
  }

  String get toCapitalCase {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String get toCapitalCaseWords {
    return split(' ').map((e) => e.toCapitalCase).join(' ');
  }

  int get toInt {
    try {
      return int.parse(this);
    } catch (e) {
      return 0;
    }
  }
}
