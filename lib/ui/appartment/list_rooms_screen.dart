import 'package:flutter/material.dart';
import 'package:masta_flutta/ui/appartment/room.dart';

class ListRoomScreen extends StatelessWidget {
  const ListRoomScreen({super.key});

  //final List<Room> rooms;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          Room(),
          Room(),
        ],
      ),
    );
  }
}
