// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FinamBank`
  String get finamAppName {
    return Intl.message(
      'FinamBank',
      name: 'finamAppName',
      desc: '',
      args: [],
    );
  }

  /// `Finam Company`
  String get finamCompanyName {
    return Intl.message(
      'Finam Company',
      name: 'finamCompanyName',
      desc: '',
      args: [],
    );
  }

  /// `2021 - now`
  String get finamYears {
    return Intl.message(
      '2021 - now',
      name: 'finamYears',
      desc: '',
      args: [],
    );
  }

  /// `Dart, Flutter, BLoC, DI (GetIt), GRPC, GoRouter, CI/CD, Native Push Notifications, Deeplinks, Firebase, Contacts, Qr scanner`
  String get finamTechStack {
    return Intl.message(
      'Dart, Flutter, BLoC, DI (GetIt), GRPC, GoRouter, CI/CD, Native Push Notifications, Deeplinks, Firebase, Contacts, Qr scanner',
      name: 'finamTechStack',
      desc: '',
      args: [],
    );
  }

  /// `FieldFocus and it's children`
  String get sixthGrainAppsName {
    return Intl.message(
      'FieldFocus and it\'s children',
      name: 'sixthGrainAppsName',
      desc: '',
      args: [],
    );
  }

  /// `6th Grain`
  String get sixthGrainCompanyName {
    return Intl.message(
      '6th Grain',
      name: 'sixthGrainCompanyName',
      desc: '',
      args: [],
    );
  }

  /// `2019 - 2021`
  String get sixthGrainYears {
    return Intl.message(
      '2019 - 2021',
      name: 'sixthGrainYears',
      desc: '',
      args: [],
    );
  }

  /// `Dart, Flutter, Kotlin, Android, BLoC, Concurrency using Isolates, Local db (Moor, Hive), Maps, Dio, Firebase, MpChart, OneSignal`
  String get sixthGrainTechStack {
    return Intl.message(
      'Dart, Flutter, Kotlin, Android, BLoC, Concurrency using Isolates, Local db (Moor, Hive), Maps, Dio, Firebase, MpChart, OneSignal',
      name: 'sixthGrainTechStack',
      desc: '',
      args: [],
    );
  }

  /// `FieldFocus`
  String get fieldFocus {
    return Intl.message(
      'FieldFocus',
      name: 'fieldFocus',
      desc: '',
      args: [],
    );
  }

  /// `Agronomy Platform`
  String get agronomyPlatform {
    return Intl.message(
      'Agronomy Platform',
      name: 'agronomyPlatform',
      desc: '',
      args: [],
    );
  }

  /// `Flahti`
  String get flahti {
    return Intl.message(
      'Flahti',
      name: 'flahti',
      desc: '',
      args: [],
    );
  }

  /// `Tap2Visit`
  String get t2vAppName {
    return Intl.message(
      'Tap2Visit',
      name: 't2vAppName',
      desc: '',
      args: [],
    );
  }

  /// `Tap2Visit Company`
  String get t2vCompanyName {
    return Intl.message(
      'Tap2Visit Company',
      name: 't2vCompanyName',
      desc: '',
      args: [],
    );
  }

  /// `2017 - 2019`
  String get t2vYears {
    return Intl.message(
      '2017 - 2019',
      name: 't2vYears',
      desc: '',
      args: [],
    );
  }

  /// `Android, Kotlin, Retrofit, MVC, WebSocket (Stomp)`
  String get t2vTechStack {
    return Intl.message(
      'Android, Kotlin, Retrofit, MVC, WebSocket (Stomp)',
      name: 't2vTechStack',
      desc: '',
      args: [],
    );
  }

  /// `Paid Parking`
  String get paidParking {
    return Intl.message(
      'Paid Parking',
      name: 'paidParking',
      desc: '',
      args: [],
    );
  }

  /// `Russian Robotics`
  String get russianRobotics {
    return Intl.message(
      'Russian Robotics',
      name: 'russianRobotics',
      desc: '',
      args: [],
    );
  }

  /// `2017`
  String get paidParkingYears {
    return Intl.message(
      '2017',
      name: 'paidParkingYears',
      desc: '',
      args: [],
    );
  }

  /// `Android, Java`
  String get paidParkingTechStack {
    return Intl.message(
      'Android, Java',
      name: 'paidParkingTechStack',
      desc: '',
      args: [],
    );
  }

  /// `City Parking`
  String get cityParking {
    return Intl.message(
      'City Parking',
      name: 'cityParking',
      desc: '',
      args: [],
    );
  }

  /// `Pet project`
  String get petProject {
    return Intl.message(
      'Pet project',
      name: 'petProject',
      desc: '',
      args: [],
    );
  }

  /// `Myself🙂`
  String get myself {
    return Intl.message(
      'Myself🙂',
      name: 'myself',
      desc: '',
      args: [],
    );
  }

  /// `2019 - now`
  String get smartMoneyboxYears {
    return Intl.message(
      '2019 - now',
      name: 'smartMoneyboxYears',
      desc: '',
      args: [],
    );
  }

  /// `Dart, Flutter, BLoC, Firebase, InAppPurchase, MpChart`
  String get smartMoneyboxTechStack {
    return Intl.message(
      'Dart, Flutter, BLoC, Firebase, InAppPurchase, MpChart',
      name: 'smartMoneyboxTechStack',
      desc: '',
      args: [],
    );
  }

  /// `Smart Moneybox`
  String get smartMoneybox {
    return Intl.message(
      'Smart Moneybox',
      name: 'smartMoneybox',
      desc: '',
      args: [],
    );
  }

  /// `...and this {product} of course`
  String andThisProduct(Object product) {
    return Intl.message(
      '...and this $product of course',
      name: 'andThisProduct',
      desc: '',
      args: [product],
    );
  }

  /// `2023`
  String get thisProductYears {
    return Intl.message(
      '2023',
      name: 'thisProductYears',
      desc: '',
      args: [],
    );
  }

  /// `Dart, Flutter Web`
  String get thisProductTechStack {
    return Intl.message(
      'Dart, Flutter Web',
      name: 'thisProductTechStack',
      desc: '',
      args: [],
    );
  }

  /// `Need more information?`
  String get needMoreInfo {
    return Intl.message(
      'Need more information?',
      name: 'needMoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Send me an email`
  String get sendMeEmail {
    return Intl.message(
      'Send me an email',
      name: 'sendMeEmail',
      desc: '',
      args: [],
    );
  }

  /// `site`
  String get site {
    return Intl.message(
      'site',
      name: 'site',
      desc: '',
      args: [],
    );
  }

  /// `app`
  String get app {
    return Intl.message(
      'app',
      name: 'app',
      desc: '',
      args: [],
    );
  }

  /// `Master's degree`
  String get mastersDegree {
    return Intl.message(
      'Master\'s degree',
      name: 'mastersDegree',
      desc: '',
      args: [],
    );
  }

  /// `Applied mathematics and computer science`
  String get mastersMajor {
    return Intl.message(
      'Applied mathematics and computer science',
      name: 'mastersMajor',
      desc: '',
      args: [],
    );
  }

  /// `2012 - 2016`
  String get mastersYears {
    return Intl.message(
      '2012 - 2016',
      name: 'mastersYears',
      desc: '',
      args: [],
    );
  }

  /// `Bachelor's degree`
  String get bachelorsDegree {
    return Intl.message(
      'Bachelor\'s degree',
      name: 'bachelorsDegree',
      desc: '',
      args: [],
    );
  }

  /// `Administration of information systems`
  String get bachelorsMajor {
    return Intl.message(
      'Administration of information systems',
      name: 'bachelorsMajor',
      desc: '',
      args: [],
    );
  }

  /// `2016 - 2018`
  String get bachelorsYears {
    return Intl.message(
      '2016 - 2018',
      name: 'bachelorsYears',
      desc: '',
      args: [],
    );
  }

  /// `Hi! My name is `
  String get hiMyNameIs {
    return Intl.message(
      'Hi! My name is ',
      name: 'hiMyNameIs',
      desc: '',
      args: [],
    );
  }

  /// `Ruslan`
  String get ruslan {
    return Intl.message(
      'Ruslan',
      name: 'ruslan',
      desc: '',
      args: [],
    );
  }

  /// `I am a `
  String get iAmA {
    return Intl.message(
      'I am a ',
      name: 'iAmA',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Developer`
  String get mobileDeveloper {
    return Intl.message(
      'Mobile Developer',
      name: 'mobileDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `And this is my digital `
  String get andThisIsMyDigital {
    return Intl.message(
      'And this is my digital ',
      name: 'andThisIsMyDigital',
      desc: '',
      args: [],
    );
  }

  /// `Portfolio`
  String get portfolio {
    return Intl.message(
      'Portfolio',
      name: 'portfolio',
      desc: '',
      args: [],
    );
  }

  /// `Years of commercial Mobile development`
  String get allYearsExperience {
    return Intl.message(
      'Years of commercial Mobile development',
      name: 'allYearsExperience',
      desc: '',
      args: [],
    );
  }

  /// `Years of commercial Android development`
  String get androidYearsExperience {
    return Intl.message(
      'Years of commercial Android development',
      name: 'androidYearsExperience',
      desc: '',
      args: [],
    );
  }

  /// `Years of commercial Flutter development`
  String get flutterYearsExperience {
    return Intl.message(
      'Years of commercial Flutter development',
      name: 'flutterYearsExperience',
      desc: '',
      args: [],
    );
  }

  /// `Apps`
  String get apps {
    return Intl.message(
      'Apps',
      name: 'apps',
      desc: '',
      args: [],
    );
  }

  /// `Crucial technologies: `
  String get crucialTechnologies {
    return Intl.message(
      'Crucial technologies: ',
      name: 'crucialTechnologies',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get downloadCv {
    return Intl.message(
      'Download CV',
      name: 'downloadCv',
      desc: '',
      args: [],
    );
  }

  /// `Ruslan's Portfolio`
  String get ruslansPortfolio {
    return Intl.message(
      'Ruslan\'s Portfolio',
      name: 'ruslansPortfolio',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
