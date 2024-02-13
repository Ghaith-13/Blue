// ignore_for_file: must_be_immutable

part of 'features_cubit.dart';

class FeaturesState extends Equatable {
  FeaturesState({this.showpage = "dashboard"});
  String? showpage;
  @override
  List<Object?> get props => [showpage];
  FeaturesState copywith({String? showpage}) =>
      FeaturesState(showpage: showpage ?? this.showpage);
}

class FeaturesInitial extends FeaturesState {}
