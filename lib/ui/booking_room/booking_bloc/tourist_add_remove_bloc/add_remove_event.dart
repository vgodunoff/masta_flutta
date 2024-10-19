part of 'add_remove_bloc.dart';

@immutable
sealed class AddRemoveEvent {}

class AddTourist extends AddRemoveEvent {}

class RemoveTourist extends AddRemoveEvent {}
