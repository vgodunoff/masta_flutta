part of 'hotel_bloc.dart';

@immutable
sealed class HotelBlocEvent {}

final class HotelFetched extends HotelBlocEvent {}

final class HotelChoose extends HotelBlocEvent {}
