import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('create $bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('\ncurrentState: ${transition.currentState.runtimeType}'
        '\nevent: ${transition.event.runtimeType}'
        '\nnextState: ${transition.nextState.runtimeType}');
  }
}
