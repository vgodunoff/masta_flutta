import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masta_flutta/ui/app_styles.dart';
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
              const SizedBox(
                height: 8,
              ),

              // First Section - Hotel rate, name and adress
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HotelGrade(),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Steigenberger Makadi',
                          style: AppStyles.kStyleW500F22,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                      style: AppStyles.kTextStyleBlueW500F14,
                    ),
                  ],
                ),
              ),

              // end of First Section - Hotel rate, name and adress

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
                  child:
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: {
                      //         'Вылет из': 'Санкт-Петербург',
                      //         'Страна, город': 'Египет, Хургада',
                      //         'Даты': '19.09.2023 – 27.09.2023',
                      //         'Кол-во ночей': '7 ночей',
                      //         'Отель': 'Steigenberger Makadi',
                      //         'Номер': 'Стандартный с видом на бассейн или сад',
                      //         'Питание': 'Все включено'
                      //       }
                      //           .entries
                      //           .map(
                      //             (e) => Text(
                      //               e.key,
                      //               style: AppStyles.kTextStyleGreyW400F16,
                      //             ),
                      //           )
                      //           .toList(),
                      //     ),

                      //     const SizedBox(
                      //       width: 20,
                      //     ),

                      //     Expanded(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: {
                      //           'Вылет из': 'Санкт-Петербург',
                      //           'Страна, город': 'Египет, Хургада',
                      //           'Даты': '19.09.2023 – 27.09.2023',
                      //           'Кол-во ночей': '7 ночей',
                      //           'Отель': 'Steigenberger Makadi',
                      //           'Номер': 'Стандартный с видом на бассейн или сад',
                      //           'Питание': 'Все включено'
                      //         }
                      //             .entries
                      //             .map(
                      //               (e) => Text(
                      //                 e.value,
                      //                 style: AppStyles.kTextStyleBlackW400F16,
                      //                 //textAlign: TextAlign.start,
                      //               ),
                      //             )
                      //             .toList(),
                      //       ),
                      //     ),
                      Column(
                          children: {
                    'Вылет из': 'Санкт-Петербург',
                    'Страна, город': 'Египет, Хургада',
                    'Даты': '19.09.2023 – 27.09.2023',
                    'Кол-во ночей': '7 ночей',
                    'Отель': 'Steigenberger Makadi',
                    'Номер': 'Стандартный с видом на бассейн или сад',
                    'Питание': 'Все включено'
                  }
                              .entries
                              .map((e) => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          e.key,
                                          style:
                                              AppStyles.kTextStyleGreyW400F16,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          e.value,
                                          style:
                                              AppStyles.kTextStyleBlackW400F16,
                                        ),
                                      ),
                                    ],
                                  ))
                              .toList())),

              // end Second Section - booking info

              const SizedBox(
                height: 12,
              ),

              // Информация о покупателе
              const _InfoAboutBuyer(),

              const SizedBox(
                height: 8,
              ),

              //данные о туристе
              const _TouristWidget(),

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
                      style: AppStyles.kStyleBlackW500F16,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoAboutBuyer extends StatefulWidget {
  const _InfoAboutBuyer();

  @override
  State<_InfoAboutBuyer> createState() => _InfoAboutBuyerState();
}

class _InfoAboutBuyerState extends State<_InfoAboutBuyer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Информация о покупателе',
          style: AppStyles.kStyleW500F22,
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            filled: true,
            fillColor: Color(0xFFF6F6F9),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Номер телефона',
                  style: AppStyles.kHintW400F12,
                ),
                Text(
                  '+7 (951) 555-99-00',
                  style: AppStyles.kHelperW400F16,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            filled: true,
            fillColor: Color(0xFFF6F6F9),
            // hintText: 'examplemail.000@mail.ru',
            // hintStyle: AppStyles.kHelperW400F16,
            // labelText: 'Почта',
            // labelStyle: AppStyles.kHintW400F12,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Почта',
                  style: AppStyles.kHintW400F12,
                ),
                Text(
                  'examplemail.000@mail.ru',
                  style: AppStyles.kHelperW400F16,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
          style: AppStyles.kTextStyleW400F16,
        )
      ]),
    );
  }
}

class _TouristWidget extends StatefulWidget {
  const _TouristWidget();

  @override
  State<_TouristWidget> createState() => _TouristWidgetState();
}

class _TouristWidgetState extends State<_TouristWidget> {
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Первый турист ',
                style: AppStyles.kStyleW500F22,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                  decoration: BoxDecoration(
                      color: const Color(0x1A0D72FF),
                      borderRadius: BorderRadius.circular(6)),
                  child: SvgPicture.asset('assets/icons/vector55_top.svg'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              filled: true,
              fillColor: Color(0xFFF6F6F9),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Имя',
                    style: AppStyles.kHintW400F12,
                  ),
                  Text(
                    'Иван',
                    style: AppStyles.kHelperW400F16,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              filled: true,
              fillColor: Color(0xFFF6F6F9),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Фамилия',
                    style: AppStyles.kHintW400F12,
                  ),
                  Text(
                    'Иванов',
                    style: AppStyles.kHelperW400F16,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
