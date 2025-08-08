import 'messages_ru.dart' as messages_ru; // Добавьте импорт

Map<String, LibraryLoader> _deferredLibraries = {
  'en': () => new Future.value(null),
  'messages': () => new Future.value(null),
  'zh': () => new Future.value(null),
  'ru': () => new Future.value(null),   // Добавьте русский язык
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'en':
      return messages_en.messages;
    case 'messages':
      return messages_messages.messages;
    case 'zh':
      return messages_zh.messages;
    case 'ru':                        // Добавьте обработчик русского
      return messages_ru.messages;
    default:
      return null;
  }
}
