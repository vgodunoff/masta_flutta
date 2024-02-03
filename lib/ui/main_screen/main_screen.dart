import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masta_flutta/domain/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:masta_flutta/ui/main_screen/hotel_detail_info.dart';
import 'package:masta_flutta/ui/main_screen/hotel_main_info.dart';
import 'package:masta_flutta/ui/main_screen/hotel_photo_and_info_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отель'),
        centerTitle: true,
      ),
      body: BlocConsumer<HotelBloc, HotelBlocState>(
        listener: (context, state) {},
        builder: (context, state) {
          print(state);
          if (state is HotelLoadedState) {
            return const SingleChildScrollView(
              child: ColoredBox(
                color: Color(0xffF6F6F9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // First Section
                    HotelPhotoAndInfoWidget(),
                    SizedBox(
                      height: 8,
                    ),

                    // Second Section
                    HotelMainInfoWidget(),
                    SizedBox(
                      height: 12,
                    ),

                    // Third Section
                    HotelDetailInfo(),
                  ],
                ),
              ),
            );
          } else if (state is HotelLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HotelFailureLoadState) {
            return const Text('Something went wrong');
          } else {
            return const Text('No data to show');
          }
        },
      ),
    );
  }
}
