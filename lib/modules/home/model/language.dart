enum Language {
  en,
  es,
  pt;

  static Language fromString(String value) {
    switch (value) {
      case 'en':
        return Language.en;
      case 'es':
        return Language.es;
      case 'pt':
        return Language.pt;
      default:
        return Language.en;
    }
  }
}
