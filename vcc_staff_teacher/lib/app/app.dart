import 'dart:io';

import 'package:vcc_staff_teacher/app/appTranslation.dart';
import 'package:vcc_staff_teacher/app/routes.dart';
import 'package:vcc_staff_teacher/cubits/appConfigurationCubit.dart';
import 'package:vcc_staff_teacher/cubits/appLocalizationCubit.dart';
import 'package:vcc_staff_teacher/cubits/authentication/authCubit.dart';
import 'package:vcc_staff_teacher/cubits/teacherAcademics/teacherMyTimetableCubit.dart';
import 'package:vcc_staff_teacher/cubits/userDetails/staffAllowedPermissionsAndModulesCubit.dart';

import 'package:vcc_staff_teacher/data/repositories/settingsRepository.dart';
import 'package:vcc_staff_teacher/firebase_options.dart';
import 'package:vcc_staff_teacher/ui/styles/colors.dart';
import 'package:vcc_staff_teacher/utils/hiveBoxKeys.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

//to avoid handshake error on some devices
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  //Register the licence of font
  //If using google-fonts
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  await Hive.openBox(authBoxKey);
  await Hive.openBox(settingsBoxKey);

  await Hive.openBox(notificationsBoxKey);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AppLocalizationCubit>(
            create: (_) => AppLocalizationCubit(SettingsRepository()),
          ),
          BlocProvider<AppConfigurationCubit>(
            create: (_) => AppConfigurationCubit(),
          ),
          BlocProvider<AuthCubit>(
            create: (_) => AuthCubit(),
          ),
          BlocProvider<StaffAllowedPermissionsAndModulesCubit>(
            create: (_) => StaffAllowedPermissionsAndModulesCubit(),
          ),
          BlocProvider<TeacherMyTimetableCubit>(
            create: (_) => TeacherMyTimetableCubit(),
          ),
        ],
        child: Builder(builder: (context) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            translationsKeys: AppTranslation.translationsKeys,
            theme: Theme.of(context).copyWith(
                extensions: <ThemeExtension<dynamic>>[customColorsExtension],
                textTheme:
                    GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
                scaffoldBackgroundColor: pageBackgroundColor,
                colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: primaryColor,
                    secondary: secondaryColor,
                    surface: backgroundColor,
                    error: errorColor,
                    tertiary: tertiaryColor)),
            getPages: Routes.getPages,
            initialRoute: Routes.splashScreen,
            locale: context.read<AppLocalizationCubit>().state.language,
            fallbackLocale: const Locale("en"),
          );
        }));
  }
}