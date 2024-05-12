import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:masta_flutta/ui/appartment/list_rooms_screen.dart';
//import 'package:masta_flutta/ui/appartment/room.dart';
//import 'package:masta_flutta/domain/data/repository/repository.dart';
import 'package:masta_flutta/ui/main_screen/main_screen.dart';

// class MyApp extends StatelessWidget {
//   final repository = Repository();
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Flutter App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BlocProvider(
//         create: (context) =>
//             HotelBloc(repository: repository)..add(HotelFetched()),
//         child: const MainScreen(),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final repository = Repository();

  String? _selectedHotel;

  void _handleHotelTapped(String hotel) {
    setState(() {
      _selectedHotel = hotel;
      //print(_selectedHotel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Flutter App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Navigator(
          pages: [
            MaterialPage(
              key: const ValueKey('MainScreen'),
              child: MainScreen(onTapped: _handleHotelTapped),
            ),
            if (_selectedHotel != null)
              const MaterialPage(
                key: ValueKey('RoomScreen'),
                child: ListRoomScreen(),
              ),
          ],
          onPopPage: (route, result) => route.didPop(result),
        ));
  }
}
