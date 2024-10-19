part of 'add_remove_bloc.dart';

@immutable
sealed class AddRemoveState {
  final int numberOfTourists;

  const AddRemoveState({required this.numberOfTourists});
}

final class AddRemoveInitial extends AddRemoveState {
  @override
  final int numberOfTourists;

  AddRemoveInitial(this.numberOfTourists) : super(numberOfTourists: 0);
}

final class AddRemoveTouristState extends AddRemoveState {
  @override
  final int numberOfTourists;
  const AddRemoveTouristState(this.numberOfTourists)
      : super(numberOfTourists: 0);
}
