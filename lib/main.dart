import 'package:dotenv/dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/application/auth/auth_bloc.dart';
import 'package:mini_project/domain/di/injectable.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/firebase_options.dart';
import 'package:mini_project/presentation/auth/login_pages/staff_login_pages/staff_login_screen.dart';
import 'package:mini_project/presentation/auth/login_pages/staff_login_pages/staff_register_screen.dart';
import 'package:mini_project/presentation/auth/login_pages/student_login_pages/student_login_screen.dart';
import 'package:mini_project/presentation/auth/login_pages/student_login_pages/student_register_screen.dart';
import 'package:mini_project/presentation/auth/startup_page/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/presentation/home/staff_home_screen/staff_home_screen.dart';
import 'package:mini_project/presentation/home/studenthome_screen/student_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await DotEnv().load([file = '.env']);
  await configureInjuction();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const WelcomePage(),
          staffRegisterPage: (context) => StaffRegisterScreen(),
          staffLoginPage: (context) => StaffLoginScreen(),
          studentRegisterPage: (context) => StudentRegisterScreen(),
          studentLoginPage: (context) => StudentLoginScreen(),
          staffHomePage: (context) => StaffHomePage(),
          studentHomePage: (context) => StudentHomePage(),
        },
      ),
    );
  }
}
