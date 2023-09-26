import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authincation_state.dart';

class AuthincationCubit extends Cubit<AuthincationState> {
  AuthincationCubit() : super(AuthincationInitial());
}
