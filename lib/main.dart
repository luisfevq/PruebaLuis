import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/pages/home/page.dart';
import 'package:mobile_test/pages/test1/bloc/bloc.dart';
import 'package:mobile_test/pages/test1/page.dart';
import 'package:mobile_test/repository.dart';
import 'package:mobile_test/theme/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (_) => const HomePage(),
      '/test': (_) => const Test1Page(),
    };
    return BlocProvider(
      create: (_) => Test1Bloc(Repository())..add(LoadEvent()),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: '/',
        routes: routes,
        theme: Theme.of(context).copyWith(
          primaryColor: AppColors.primary,
          secondaryHeaderColor: AppColors.secondary,
        ),
      ),
    );
  }
}
