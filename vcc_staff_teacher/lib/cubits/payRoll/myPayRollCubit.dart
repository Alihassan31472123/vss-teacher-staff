import 'package:vcc_staff_teacher/data/models/payRoll.dart';
import 'package:vcc_staff_teacher/data/repositories/payRollRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class MyPayRollState {}

class MyPayRollInitial extends MyPayRollState {}

class MyPayRollFetchInProgress extends MyPayRollState {}

class MyPayRollFetchSuccess extends MyPayRollState {
  List<PayRoll> payrolls;

  MyPayRollFetchSuccess({required this.payrolls});
}

class MyPayRollFetchFailure extends MyPayRollState {
  final String errorMessage;

  MyPayRollFetchFailure(this.errorMessage);
}

class MyPayRollCubit extends Cubit<MyPayRollState> {
  final PayRollRepository _payRollRepository = PayRollRepository();

  MyPayRollCubit() : super(MyPayRollInitial());

  void getMyPayRoll({required int sessionYearId}) async {
    try {
      emit(MyPayRollFetchInProgress());
      emit(MyPayRollFetchSuccess(
          payrolls: await _payRollRepository.getMyPayRoll(
              sessionYearId: sessionYearId)));
    } catch (e) {
      emit(MyPayRollFetchFailure(e.toString()));
    }
  }
}
