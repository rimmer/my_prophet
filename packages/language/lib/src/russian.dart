import 'interface.dart';
part 'prediction/russian.dart';

class RussianLocale implements Locale {
  List<String> predicitonBark() => _predictionsRussian();

  final String name = "имя";
  final String birthdate = "дата рождения";
  final String birthcountry = "страна, в которой вы родились";
  final String birthplace = "населенный пункт, где вы родились";
  final String sex = "пол";
  final String male = "мужской";
  final String female = "женский";
  final String other = "другой";
  final String notSelectedSex = "выбрать";
  final String termsAccept = "я принимаю условия";
  final String termsPrivacyPolicy = "пользовательского соглашения";
  final String termsUserAgreement = "политики конфиденциальности";
  final String start = "начать";
  final String apply = "применить";
  final String atLeastXsymbolsNeeded = "минимальное количество символов: ";
  final String notAllFieldsFilled = "Не все поля заполнены";
  final String termsAreNotAccepted = "Вы не приняли соглашения";
  final String my = "мой";
  final String you = "вы";
  final String mood = "настроение";
  final String simple = "простой";
  final String extended = "расширенный";
  final String clarifyForecast = "уточнить прогноз";
  final String rateYourYesterday = "оцените свое вчерашнее";
  final String productivity = "продуктивность";
  final String relationships = "отношения";
  final String selfdevelopment = "саморазвитие";
  final String physicalActivity = "физическая активность";
  final String pollSettingsTitle = "обучение AI";
  final String pollSettingPollOption = "проводить опрос";
  final String pollSettingsStudyOption = "включить обучение AI";
  final String pollSettingText =
      "отвечая на вопросы о своем вчерашнем настроении Вы помогате обучить наш искусственный интеллект лучше прогнозировать ваше будущее.";
  final String impact = "влияние";
  final String today = "сегодня";
  final String tomorrow = "завтра";
  final String datomorrow = "послезавтра";
  final String horoscope = "гороскоп";
  final String horoscopeFor = "гороскоп на";
  final String addAmbiance = "добавить окружение";
  final String profileSettings = "настройки профиля";
  final String notification = "уведомления";
  final String notificationAt = "уведомления в";
  final String writeToDev = "написать разработчику";
  final String rateApp = "оценить приложение";
  final String privacyPolicy = "политика конфеденциальности";
  final String userAgreement = "пользовательское соглашение";
  final String personalInformation = "личная информация";
  final String propheciesToDisplay = "отображаемые показатели";
  final String save = "сохранить";
  final String noAmbianceTitle = "мы над этим работаем";
  final String noAmbianceDescription =
      "Это будет нечто! Вы сможете добавить жену, мужа, детей, родителей, сотрудников и смотреть прогноз по взаимоотношениям с ними на каждый день!";
  final String noAmbianceButton = "работайте";
  Map<int, String> get month => {
        1: "январь",
        2: "февраль",
        3: "март",
        4: "апрель",
        5: "май",
        6: "июнь",
        7: "июль",
        8: "август",
        9: "сентябрь",
        10: "октябрь",
        11: "ноябрь",
        12: "декабрь",
      };
  Map<String, String> get planetImpact => {
        "Sun": "Солнца",
        "Moon": "Луны",
        "Mercury": "Меркурия",
        "Mars": "Марса",
        "Venus": "Венеры",
        "Jupiter": "Юпитера",
        "Saturn": "Сатурна",
        "Pluto": "Плутона",
        "Uranus": "Урана",
        "Neptune": "Нептуна",
        "Lilith": "Темной Луны",
        "Selene": "Светлой Луны",
      };
  Map<String, String> get prophecyId => const {
        "LUCK": "Удача",
        "INTERNAL_STRENGTH": "Внутренняя Сила",
        "MOODLET": "Самочувствие",
        "AMBITION": "Амбиции",
        "INTELLIGENCE": "Интеллект",
      };
}
