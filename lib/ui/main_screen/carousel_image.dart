import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouserHotelPhoto extends StatefulWidget {
  const CarouserHotelPhoto({
    super.key,
  });

  @override
  State<CarouserHotelPhoto> createState() => _CarouserHotelPhotoState();
}

class _CarouserHotelPhotoState extends State<CarouserHotelPhoto> {
  List<String> imgUrls = [
    'assets/images/image_20.jpg',
    'assets/images/image_20.jpg',
    'assets/images/image_20.jpg',
    'assets/images/image_20.jpg',
    'assets/images/image_20.jpg',
  ];

  Color activeColor = const Color(0xff000000);
  int inActiveInd = 1;
  final colors = const [
    Color(0x38000000),
    Color(0x38000000),
    Color(0x2B000000),
    Color(0x1A000000),
    Color(0x0D000000),
  ];
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, index, realIndex) {
          final impPath = imgUrls[index];
          return Image.asset(
            impPath,
            fit: BoxFit.contain,
          );
        },
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndexNotifier.value = index;
            });
          },
        ),
      ),
      Positioned.fill(
        bottom: 8.0,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: ValueListenableBuilder<int>(
              valueListenable: _currentIndexNotifier,
              builder: (context, currentIndex, _) {
                return DotsIndicator(
                  dotsCount: imgUrls.length,
                  position: currentIndex,
                  decorator: DotsDecorator(
                    //color: Colors.grey,
                    // colors: colors.reversed.toList(),
                    colors: colors,
                    //activeColors: colors,
                    activeColor: const Color(0xff000000),
                    size: const Size.square(8.0),
                    activeSize: const Size.square(8.0),
                    spacing: const EdgeInsets.all(4.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ]);
  }
}
