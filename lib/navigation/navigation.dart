import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masta_flutta/ui/appartment/list_rooms_screen.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/add_remove_bloc.dart';
import 'package:masta_flutta/ui/booking_room/booking_room.dart';
import 'package:masta_flutta/ui/comlete_order/comlete_order.dart';
import 'package:masta_flutta/ui/main_screen/main_screen.dart';

abstract class NavigationRoutNames {
  static String mainScreen = '/';
  static String listRoomScreen = '/list_rooms';
  static String bookingRoomScreen = '/list_rooms/booking_room';
  static String completedOrderScreen =
      '/list_rooms/booking_room/completed_order';
}

class Navigation {
  static final routes = <String, Widget Function(BuildContext context)>{
    NavigationRoutNames.mainScreen: (context) => const MainScreen(),
    NavigationRoutNames.listRoomScreen: (context) => const ListRoomScreen(),
    NavigationRoutNames.bookingRoomScreen: (context) => BlocProvider(
          create: (context) => AddRemoveBloc(),
          child: const BookingRoom(),
        ),
    NavigationRoutNames.completedOrderScreen: (context) =>
        const CompleteOrder(),
  };
}

// Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => BlocProvider(
//                       create: (context) => AddRemoveBloc(),
//                       child: const BookingRoom(),
//                     ),
//                   ));