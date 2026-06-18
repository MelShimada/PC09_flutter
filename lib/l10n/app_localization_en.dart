// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World';

  @override
  String get lanceLivre => 'Free throw';

  @override
  String get doisPontos => 'Two points';

  @override
  String get tresPontos => 'Three points';

  @override
  String get voltarLance => 'Undo move';

  @override
  String get time1 => 'Team 1';

  @override
  String get time2 => 'Team 2';

  @override
  String get appTitle => 'PC 09';
}
