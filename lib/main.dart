import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:birth_registration/app/routes/routes.dart';
import 'package:digit_components/theme/digit_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChildDataCubit()..loadChildData(),
      child: MaterialApp.router(
        title: 'Birth Registration',
        theme: ThemeData(
          colorScheme: DigitTheme.instance.colorScheme,
          useMaterial3: true,
        ),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
