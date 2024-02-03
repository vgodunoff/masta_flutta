import 'package:flutter/material.dart';

class HotelDetailInfo extends StatelessWidget {
  const HotelDetailInfo({
    super.key,
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
          onPressed: () {},
          child: const Text(
            'К выбору номера',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontFamily: 'SF-Pro-Display',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )),
    );
  }
}
