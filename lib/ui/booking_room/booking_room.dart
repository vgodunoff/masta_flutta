import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masta_flutta/navigation/navigation.dart';
import 'package:masta_flutta/ui/app_styles.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/add_remove_bloc.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_form_bloc/booking_bloc.dart';
import 'package:masta_flutta/ui/comlete_order/comlete_order.dart';

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

              //данные о туристах
              BlocBuilder<AddRemoveBloc, AddRemoveState>(
                builder: (context, state) {
                  if (state is AddRemoveInitial) {
                    return Column(children: [
                      BlocProvider(
                        create: (context) => BookingBloc(),
                        child: const TouristWidget('Первый турист'),
                      ),

                      //данные о втором туристе
                      BlocProvider(
                        create: (context) => BookingBloc()
                          ..add(const BookingFormClosed(isCollapsed: true)),
                        child: const TouristWidget('Второй турист'),
                      )
                    ]);
                  }
                  if (state is AddRemoveTouristState) {
                    return Column(children: [
                      ...[
                        BlocProvider(
                          create: (context) => BookingBloc(),
                          child: const TouristWidget('Первый турист'),
                        ),

                        //данные о втором туристе
                        BlocProvider(
                          create: (context) => BookingBloc()
                            ..add(const BookingFormClosed(isCollapsed: true)),
                          child: const TouristWidget('Второй турист'),
                        )
                      ],
                      ...List.generate(
                        state.numberOfTourists,
                        (index) => BlocProvider(
                          create: (context) => BookingBloc(),
                          child: const TouristWidget('Добавленный турист'),
                        ),
                      )
                    ]);
                  }
                  return const SizedBox.shrink();
                },
              ),

              //_ButtonAddTourist(tourists: tourists),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Добавить туриста',
                      style: AppStyles.kStyleW500F22,
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<AddRemoveBloc>(context)
                            .add(AddTourist());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 13),
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                        decoration: BoxDecoration(
                            color: const Color(0x1A0D72FF),
                            borderRadius: BorderRadius.circular(6)),
                        child:
                            SvgPicture.asset('assets/icons/vector55_top.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              // Button
              Container(
                color: const Color(0xffFFFFFF),
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0D72FF),
                    ),
                    onPressed: () {
                      //завершаем бронирование, оплачиваем, запоминаем данные о туристах, переходим на страницу Заказ оплачен

                      // переходим на страницу Заказ оплачен
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => const CompleteOrder(),
                      // ));
                      Navigator.pushNamed(
                          context, NavigationRoutNames.completedOrderScreen);
                    },
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

class _ButtonAddTourist extends StatelessWidget {
  const _ButtonAddTourist({
    required this.tourists,
  });

  final List<BlocProvider<BookingBloc>> tourists;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Добавить туриста',
            style: AppStyles.kStyleW500F22,
          ),
          InkWell(
            onTap: () {
              BlocProvider.of<AddRemoveBloc>(context).add(AddTourist());
            },
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
    );
  }
}

// class _ButtonAddTourist extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             'Добавить туриста',
//             style: AppStyles.kStyleW500F22,
//           ),
//           InkWell(
//             onTap: () {
//               //tourists
//               // isCollapsed = !isCollapsed;
//               // BlocProvider.of<BookingBloc>(context)
//               //     .add());
//             },
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 13),
//               padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
//               decoration: BoxDecoration(
//                   color: const Color(0x1A0D72FF),
//                   borderRadius: BorderRadius.circular(6)),
//               child: SvgPicture.asset('assets/icons/vector55_top.svg'),
//             ),
//           ),
//         ],
//       ),
//     ),
//);
//   }
// }

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

class TouristWidget extends StatefulWidget {
  final String clientNumber;

  const TouristWidget(this.clientNumber, {super.key});

  @override
  State<TouristWidget> createState() => _TouristWidgetState();
}

class _TouristWidgetState extends State<TouristWidget> {
  bool isCollapsed = false;
  late final TextEditingController _controllerName;
  late final TextEditingController _controllerSurname;
  late final TextEditingController _controllerBirthDate;
  late final TextEditingController _controllerCitizen;
  late final TextEditingController _controllerPassportID;
  late final TextEditingController _controllerPassportExpireDate;

  @override
  void initState() {
    super.initState();
    _controllerName = TextEditingController();
    _controllerSurname = TextEditingController();
    _controllerBirthDate = TextEditingController();
    _controllerCitizen = TextEditingController();
    _controllerPassportID = TextEditingController();
    _controllerPassportExpireDate = TextEditingController();
  }

  @override
  void dispose() {
    _controllerName.dispose();
    _controllerSurname.dispose();
    _controllerBirthDate.dispose();
    _controllerCitizen.dispose();
    _controllerPassportID.dispose();
    _controllerPassportExpireDate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        if (state is BookingInitial) {
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
                    Text(
                      widget.clientNumber,
                      style: AppStyles.kStyleW500F22,
                    ),
                    InkWell(
                      onTap: () {
                        isCollapsed = !isCollapsed;
                        BlocProvider.of<BookingBloc>(context)
                            .add(BookingFormClosed(isCollapsed: isCollapsed));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 13),
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                        decoration: BoxDecoration(
                            color: const Color(0x1A0D72FF),
                            borderRadius: BorderRadius.circular(6)),
                        child:
                            SvgPicture.asset('assets/icons/vector55_top.svg'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerName,
                  onChanged: (value) => _controllerName.text = value,
                  decoration: const InputDecoration(
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
                TextField(
                  controller: _controllerSurname,
                  onChanged: (value) => _controllerSurname.text = value,
                  decoration: const InputDecoration(
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
                TextField(
                  controller: _controllerBirthDate,
                  onChanged: (value) => _controllerBirthDate.text = value,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF6F6F9),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                      'Дата рождения',
                      style: AppStyles.kHintW400F17Sp1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _controllerCitizen,
                  onChanged: (value) => _controllerCitizen.text = value,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF6F6F9),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                      'Гражданство',
                      style: AppStyles.kHintW400F17Sp1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _controllerPassportID,
                  onChanged: (value) => _controllerPassportID.text = value,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF6F6F9),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                      'Номер загранпаспорта',
                      style: AppStyles.kHintW400F17Sp1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _controllerPassportExpireDate,
                  onChanged: (value) =>
                      _controllerPassportExpireDate.text = value,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF6F6F9),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                      'Срок действия загранпаспорта',
                      style: AppStyles.kHintW400F17Sp1,
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
        if (state is BookingCollapsedState) {
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
                    Text(
                      widget.clientNumber,
                      style: AppStyles.kStyleW500F22,
                    ),
                    InkWell(
                      onTap: () {
                        //false > true
                        //true > false
                        isCollapsed = !isCollapsed;
                        BlocProvider.of<BookingBloc>(context)
                            .add(BookingFormClosed(isCollapsed: isCollapsed));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 13),
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                        decoration: BoxDecoration(
                            color: const Color(0x1A0D72FF),
                            borderRadius: BorderRadius.circular(6)),
                        child:
                            SvgPicture.asset('assets/icons/vector55_top.svg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
