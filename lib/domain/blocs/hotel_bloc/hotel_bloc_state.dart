part of 'hotel_bloc.dart';

@immutable
sealed class HotelBlocState {}

final class HotelInitial extends HotelBlocState {}

final class HotelLoadingState extends HotelBlocState {}

final class HotelLoadedState extends HotelBlocState {
  final Hotel hotel;

  HotelLoadedState({required this.hotel});
}

final class HotelFailureLoadState extends HotelBlocState {
  final String message;

  HotelFailureLoadState({required this.message});
}
