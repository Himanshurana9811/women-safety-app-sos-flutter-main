import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_secure_safe/db/share_pref.dart';
// import 'package:go_secure_safe/child/bottom_screens/child_home_page.dart';
import 'package:go_secure_safe/utils/constants.dart';
import 'package:go_secure_safe/utils/flutter_background_services.dart';
import 'child/bottom_page.dart';

final navigatorkey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await MySharedPrefference.init();
  await initializeService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GoSecure',
        // scaffoldMessengerKey: navigatorkey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.firaSansTextTheme(
            Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.blue,
        ),
        home: BottomPage());
  }
}

// class CheckAuth extends StatelessWidget {
//   // const CheckAuth({Key? key}) : super(key: key);

//   checkData() {
//     if (MySharedPrefference.getUserType() == 'parent') {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
