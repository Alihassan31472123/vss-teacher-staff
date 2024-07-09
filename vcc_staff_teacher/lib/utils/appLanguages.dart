//by default language of the app
import 'package:vcc_staff_teacher/data/models/appLanguage.dart';

const String defaultLanguageCode = "en";

//Add language code in this list
//visit this to find languageCode for your respective language
//https://developers.google.com/admin-sdk/directory/v1/languages
const List<AppLanguage> appLanguages = [
  //Please add language code here and language name
  AppLanguage(languageCode: "en", languageName: "English"),
  AppLanguage(languageCode: "hi", languageName: "हिन्दी - Hindi"),
  AppLanguage(languageCode: "ur", languageName: "اردو - Urdu"),
  AppLanguage(languageCode: "af", languageName: "Afrikaans"),
  AppLanguage(languageCode: "ar", languageName: "العربية - Arabic"),
  AppLanguage(languageCode: "de", languageName: "Deutsch - German"),
  AppLanguage(languageCode: "el", languageName: "Ελληνικά - Greek"),
  AppLanguage(languageCode: "es", languageName: "Español - Spanish"),
  AppLanguage(languageCode: "fr", languageName: "Français - French"),
  AppLanguage(languageCode: "ga", languageName: "Gaeilge - Irish"),
  AppLanguage(languageCode: "ha", languageName: "Hausa"),
  AppLanguage(languageCode: "he", languageName: "עברית - Hebrew"),
  AppLanguage(languageCode: "ig", languageName: "Igbo"),
  AppLanguage(languageCode: "it", languageName: "Italiano - Italian"),
  AppLanguage(languageCode: "ja", languageName: "日本語 - Japanese"),
  AppLanguage(languageCode: "kj", languageName: "Kuanyama"),
  AppLanguage(languageCode: "ko", languageName: "한국어 - Korean"),
  AppLanguage(languageCode: "ln", languageName: "Lingala"),
  AppLanguage(languageCode: "nl", languageName: "Nederlands - Dutch"),
  AppLanguage(languageCode: "ny", languageName: "Nyanja"),
  AppLanguage(languageCode: "pt", languageName: "Português - Portuguese"),
  AppLanguage(languageCode: "sn", languageName: "Shona"),
  AppLanguage(languageCode: "ss", languageName: "Siswati"),
  AppLanguage(languageCode: "st", languageName: "Sesotho"),
  AppLanguage(languageCode: "su", languageName: "Sundanese"),
  AppLanguage(languageCode: "sw", languageName: "Swahili"),
  AppLanguage(languageCode: "th", languageName: "ภาษาไทย - Thai"),
  AppLanguage(languageCode: "tn", languageName: "Tswana"),
  AppLanguage(languageCode: "ts", languageName: "Tsonga"),
  AppLanguage(languageCode: "ve", languageName: "Venda"),
  AppLanguage(languageCode: "yo", languageName: "Yoruba"),
  AppLanguage(languageCode: "zh", languageName: "中文 - Chinese"),
  AppLanguage(languageCode: "zu", languageName: "Zulu"),
  //
  //For example you are adding gujarati language
  //AppLanguage(languageCode: "gu", languageName: "ગુજરાતી - Gujarati"),
  //
];

