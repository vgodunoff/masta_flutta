import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masta_flutta/navigation/navigation.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/add_remove_bloc.dart';
import 'package:masta_flutta/ui/booking_room/booking_room.dart';
import 'package:masta_flutta/ui/main_screen/carousel_image.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xffF6F6F9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // First Section
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const CarouserHotelPhoto(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21),

                  //Appartment decription

                  const Text(
                    'Стандартный с видом на бассейн или сад',
                    style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  const SizedBox(height: 8),

                  //Prons - удобства: кондер, все включено
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFC),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'Все включено',
                          style: TextStyle(
                              color: Color(0xff828796),
                              fontFamily: 'SF-Pro-Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFC),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'Кондиционер',
                          style: TextStyle(
                              color: Color(0xff828796),
                              fontFamily: 'SF-Pro-Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),

                  //Подробнее о номере
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0x1A0D72FF),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Подробнее о номере',
                            style: TextStyle(
                                color: Color(0xff0D72FF),
                                fontFamily: 'SF-Pro-Display',
                                fontSize: 16),
                          ),
                          SvgPicture.asset('assets/icons/Vector55_blue.svg'),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Text(
                        '186 600 ₽',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'SF-Pro-Display',
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          'за 7 ночей с перелётом',
                          style: TextStyle(
                              color: Color(0xff828796),
                              fontFamily: 'SF-Pro-Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // button
          Container(
            color: const Color(0xffFFFFFF),
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0D72FF),
                ),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => BlocProvider(
                  //     create: (context) => AddRemoveBloc(),
                  //     child: const BookingRoom(),
                  //   ),
                  // ));

                  Navigator.pushNamed(
                      context, NavigationRoutNames.bookingRoomScreen);
                },
                child: const Text(
                  'Выбрать номер',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'SF-Pro-Display',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
