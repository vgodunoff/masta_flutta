import 'package:flutter/material.dart';
import 'package:masta_flutta/ui/main_screen/hotel_photo_and_info_widget.dart';

class BookingRoom extends StatelessWidget {
  const BookingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бронирование'),
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: const Color(0xffF6F6F9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // First Section - Hotel rate, name and adress
              const SizedBox(
                height: 8,
              ),
              const HotelGrade(),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text(
                    'Steigenberger Makadi',
                    style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                style: TextStyle(
                    color: Color(0xff0D72FF),
                    fontFamily: 'SF-Pro-Display',
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),

              // Second Section - booking info
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              // Button
              Container(
                color: const Color(0xffFFFFFF),
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0D72FF),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Оплатить 198 036 руб.',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
