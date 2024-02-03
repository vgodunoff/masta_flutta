import 'package:bloc/bloc.dart';
import 'package:masta_flutta/domain/data/repository/repository.dart';
import 'package:masta_flutta/domain/entity/hotel.dart';
import 'package:meta/meta.dart';

part 'hotel_bloc_event.dart';
part 'hotel_bloc_state.dart';

class HotelBloc extends Bloc<HotelBlocEvent, HotelBlocState> {
  final Repository repository;
  HotelBloc({required this.repository}) : super(HotelInitial()) {
    on<HotelBlocEvent>((event, emit) async {
      if (event is HotelFetched) {
        try {
          emit(HotelLoadingState());
          final hotel = await repository.fetchHotelInfo();
          emit(HotelLoadedState(hotel: hotel));
        } catch (error) {
          emit(HotelFailureLoadState(message: error.toString()));
        }
      }
    });
  }
}
