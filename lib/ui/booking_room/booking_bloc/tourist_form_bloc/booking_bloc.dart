import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<BookingEvent>((event, emit) {
      if (event is BookingFormClosed) {
        if (event.isCollapsed) {
          emit(BookingCollapsedState());
        } else {
          emit(BookingInitial());
        }
      }
    });
  }
}
