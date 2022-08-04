import 'package:bloc/bloc.dart';

part 'increment_event.dart';
part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(IncrementState.initial()) {
    on<AddEvent>(_add);
  }

  @override
  void onEvent(IncrementEvent event) {
    super.onEvent(event);
    print(event);
  }

  @override
  void onChange(Change<IncrementState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onTransition(Transition<IncrementEvent, IncrementState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  void _add(AddEvent event, Emitter<IncrementState> emit) {
    emit(IncrementState(count: state.count + 1));
  }
}
