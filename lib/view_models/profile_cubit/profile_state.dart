part of 'profile_cubit.dart';


sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final UserModel user;
  ProfileLoaded(this.user);
}
