import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';

class ButtonChoose extends StatelessWidget {
  final String buttonText;
  final HotelBlocEvent event;
  const ButtonChoose({
    super.key,
    required this.buttonText,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0D72FF),
          ),
          onPressed: () {
            BlocProvider.of<HotelBloc>(context).add(event);
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Color(0xffFFFFFF),
              fontFamily: 'SF-Pro-Display',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )),
    );
  }
}
