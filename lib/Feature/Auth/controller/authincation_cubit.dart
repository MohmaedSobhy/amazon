import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authincation_state.dart';

class AuthincationCubit extends Cubit<AuthincationState> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isSignin = true;
  AuthincationCubit() : super(AuthincationInitial());

  static AuthincationCubit? _authCubit;

  static AuthincationCubit get(context) {
    _authCubit ??= BlocProvider.of(context);
    return _authCubit!;
  }

  void authincation() {
    if (isSignin) {
      isSignin = false;
      emit(SignUpState());
    } else {
      isSignin = true;
      emit(SignUpState());
    }
  }

  void signIn() {}
  void signUp() {}
}
