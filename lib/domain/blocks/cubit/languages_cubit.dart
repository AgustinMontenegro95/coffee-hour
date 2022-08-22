import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'languages_state.dart';

class LanguagesCubit extends HydratedCubit<LanguagesState> {
  LanguagesCubit() : super(LanguagesState(isSpain: true));

  void toggleSwitch(bool value) => emit(state.copyWith(changeState: value));

  @override
  LanguagesState fromJson(Map<String, dynamic> json) {
    final conx = json['conx'];
    return LanguagesState(isSpain: conx);
  }

  @override
  Map<String, dynamic>? toJson(LanguagesState state) {
    return state.toJson();
  }
}
