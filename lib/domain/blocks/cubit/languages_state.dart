part of 'languages_cubit.dart';

@freezed
class LanguagesState {
  final bool isSpain;

  LanguagesState({required this.isSpain});

  LanguagesState copyWith({required bool changeState}) {
    return LanguagesState(isSpain: changeState);
  }

  Map<String, dynamic> toJson() {
    return {'conx': isSpain};
  }
}
