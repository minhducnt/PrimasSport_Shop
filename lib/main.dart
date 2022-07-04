import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../src/data/ultis/ultis.dart';
import '../src/views/onboarding/onboarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: Main()));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 810),
      builder: (context, child) => MaterialApp(
        title: "Primas Sport",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Quicksand',
            scaffoldBackgroundColor: AppColors.kScaffoldColor,
            primaryColor: AppColors.kPrimaryColor,
            colorScheme: const ColorScheme.light().copyWith(
                primary: AppColors.kPrimaryColor,
                secondary: AppColors.kSecondaryColor)),
        home: const Onboarding(),
      ),
    );
  }
}
