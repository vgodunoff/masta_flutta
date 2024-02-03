import 'package:flutter/material.dart';

class HotelPhotoAndInfoWidget extends StatelessWidget {
  const HotelPhotoAndInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Image.asset(
                      'assets/images/image_20.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 21),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0x33FFC700),
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xffFFA800),
                  ),
                  Text(
                    '5 Превосходно',
                    style: TextStyle(
                        color: Color(0xffFFA800),
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 16),
                  )
                ],
              ),
            ),
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
            const SizedBox(height: 8),
            const Row(
              children: [
                Text(
                  'от 134 673 ₽',
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
                    'за тур с перелётом',
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
    );
  }
}
