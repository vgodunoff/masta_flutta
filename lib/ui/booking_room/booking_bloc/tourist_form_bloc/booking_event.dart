part of 'booking_bloc.dart';

@immutable
sealed class BookingEvent {
  const BookingEvent();
}

final class BookingFormClosed extends BookingEvent {
  final bool isCollapsed;

  const BookingFormClosed({required this.isCollapsed});
}
