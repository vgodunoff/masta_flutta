import 'package:flutter/material.dart';
import 'package:masta_flutta/navigation/navigation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:masta_flutta/ui/main_screen/hotel_main_info.dart';
// import 'package:masta_flutta/ui/main_screen/button_choose.dart';
import 'package:masta_flutta/ui/main_screen/hotel_photo_and_info_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  //final ValueChanged<String> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Отель'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: ColoredBox(
            color: const Color(0xffF6F6F9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // First Section
                const HotelPhotoAndInfoWidget(),
                const SizedBox(
                  height: 8,
                ),

                // Second Section
                const HotelMainInfoWidget(),
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
                      onPressed: () {
                        //'Steigenberger Makadi'
                        Navigator.pushNamed(
                            context, NavigationRoutNames.listRoomScreen);
                      },
                      child: const Text(
                        'К выбору номера',
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
        ));
  }
}



// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Отель'),
//         centerTitle: true,
//       ),
//       body: BlocConsumer<HotelBloc, HotelBlocState>(
//         listener: (context, state) {
//           if (state is HotelLoadingState) {
//             const Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           if (state is HotelGoToChooseRoomState) {
//             //Navigator.
//           }
//         },
//         builder: (context, state) {
//           if (state is HotelLoadedState) {
//             return SingleChildScrollView(
//               child: ColoredBox(
//                 color: const Color(0xffF6F6F9),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     // First Section
//                     const HotelPhotoAndInfoWidget(),
//                     const SizedBox(
//                       height: 8,
//                     ),

//                     // Second Section
//                     const HotelMainInfoWidget(),
//                     const SizedBox(
//                       height: 12,
//                     ),

//                     // Button
//                     ButtonChoose(
//                       buttonText: 'К выбору номера',
//                       event: HotelChoose(),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           } else if (state is HotelFailureLoadState) {
//             return const Text('Something went wrong');
//           } else {
//             return const Text('No data to show');
//           }
//         },
//       ),
//     );
//   }
// }
