import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/models/user_model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void getUserData(String userId) {
    emit(ProfileLoading());
    final UserModel user = dummyUsers.firstWhere((user) => user.id == userId);
    emit(ProfileLoaded(user));
  }
}
