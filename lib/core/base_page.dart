import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasePage<B extends BlocBase<State>, State> extends StatelessWidget {
  final B bloc;
  final PreferredSizeWidget? appBar;
  final void Function(BuildContext, State)? listener;
  final Widget Function(BuildContext, State) builder;

  const BasePage({
    super.key,
    required this.bloc,
    this.appBar,
    this.listener,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: Scaffold(
        appBar: appBar,
        body: listener != null
            ? BlocConsumer<B, State>(
                listener: listener!,
                builder: builder,
              )
            : BlocBuilder<B, State>(builder: builder),
      ),
    );
  }
}
