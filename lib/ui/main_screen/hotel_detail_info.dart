import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelMainInfoWidget extends StatelessWidget {
  const HotelMainInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Об отеле',
            style: TextStyle(
                fontFamily: 'SF-Pro-Display',
                fontWeight: FontWeight.w500,
                fontSize: 22),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  '3-я линия',
                  style: TextStyle(
                      color: Color(0xff828796),
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  'Платный Wi-Fi в фойе',
                  style: TextStyle(
                      color: Color(0xff828796),
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  '30 км до аэропорта',
                  style: TextStyle(
                      color: Color(0xff828796),
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  '1 км до пляжа',
                  style: TextStyle(
                      color: Color(0xff828796),
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
            style: TextStyle(
                color: Color(0xE6000000),
                fontFamily: 'SF-Pro-Display',
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xffFBFBFC),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset('assets/icons/emoji-happy.svg'),
                  title: const Text(
                    'Удобства',
                    style: TextStyle(
                        color: Color(0xff2C3035),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    'Самое необходимое',
                    style: TextStyle(
                        color: Color(0xff828796),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  trailing: SvgPicture.asset('assets/icons/Vector 55.svg'),
                ),
                const Divider(
                  height: 10,
                  indent: 36,
                  color: Color(0x26828796),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset('assets/icons/tick-square.svg'),
                  title: const Text(
                    'Что включено',
                    style: TextStyle(
                        color: Color(0xff2C3035),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    'Самое необходимое',
                    style: TextStyle(
                        color: Color(0xff828796),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  trailing: SvgPicture.asset('assets/icons/Vector 55.svg'),
                ),
                const Divider(
                  height: 10,
                  indent: 36,
                  color: Color(0x26828796),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset('assets/icons/close-square.svg'),
                  title: const Text(
                    'Что не включено',
                    style: TextStyle(
                        color: Color(0xff2C3035),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    'Самое необходимое',
                    style: TextStyle(
                        color: Color(0xff828796),
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  trailing: SvgPicture.asset('assets/icons/Vector 55.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
