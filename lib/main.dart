import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/firebase_options.dart';

import 'injection.dart';
import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getIt.registerSingleton<StakeHolder>(StakeHolder.admin);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    BlocProvider(
      create: (context) => getIt<AuthCubit>()..checkAuthStatus(),
      child: getIt<App>(),
    ),
  );
}
