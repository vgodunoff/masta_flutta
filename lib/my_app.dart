import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:masta_flutta/domain/data/repository/repository.dart';
import 'package:masta_flutta/ui/main_screen/main_screen.dart';

class MyApp extends StatelessWidget {
  final repository = Repository();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) =>
            HotelBloc(repository: repository)..add(HotelFetched()),
        child: const MainScreen(),
      ),
    );
  }
}
