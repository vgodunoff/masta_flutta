import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masta_flutta/domain/entity/tourist.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/tourist_api_client.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/tourist_data.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_add_remove_bloc/tourist_repo.dart';
import 'package:masta_flutta/ui/booking_room/booking_bloc/tourist_form_bloc/booking_bloc.dart';
import 'package:masta_flutta/ui/booking_room/booking_room.dart';
import 'package:meta/meta.dart';

part 'add_remove_event.dart';
part 'add_remove_state.dart';

class AddRemoveBloc extends Bloc<AddRemoveEvent, AddRemoveState> {
  final TouristRepository _repository = TouristRepository();

  AddRemoveBloc() : super(AddRemoveInitial(2)) {
    on<AddRemoveEvent>((event, emit) {
      if (event is AddTourist) {
        print(state.numberOfTourists);
        _repository.addTourist();
        final count = _repository.counterTourists;
        //print(count);
        emit(AddRemoveTouristState(count));
      }

      if (event is RemoveTourist) {
        _repository.removeTourist();
        final count = _repository.counterTourists;
        print(count);
        emit(AddRemoveTouristState(count));
      }
    });
  }
}
