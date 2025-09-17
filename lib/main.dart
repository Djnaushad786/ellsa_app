import 'package:ellsa_app/provider/auth_provider.dart';
import 'package:ellsa_app/view/add_address_screen.dart';
import 'package:ellsa_app/view/login_old_users.dart';
import 'package:ellsa_app/view/login_screen.dart';
import 'package:ellsa_app/view/otp_screen.dart';
import 'package:ellsa_app/view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const ElssaApp(),
    ),
  );
}

class ElssaApp extends StatelessWidget {
  const ElssaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ELSSA",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Roboto",
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => const SplashScreen(),
        "/login": (_) => const LoginScreen(),
        "/login-old": (_) => const LoginOldScreen(),
        "/otp": (_) => const OtpScreen(),
        "/address": (_) => const AddAddressScreen(),
      },
    );
  }
}
