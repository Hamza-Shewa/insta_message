enum ThemeType {
  dark('Dark'),
  light('Light'),
  system('System');

  final String name;
  const ThemeType(this.name);

  static getStatus(String status) {
    switch (status) {
      case 'Dark':
        return ThemeType.dark;
      case 'Light':
        return ThemeType.light;
      case 'System':
        return ThemeType.system;
      default:
        return ThemeType.system;
    }
  }
}
