import 'package:bloc_timer/apps/views/TimerView.dart';
import 'package:bloc_timer/timer/bloc/bloc/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../timer/timer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(109, 234, 255, 1),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromRGBO(72, 74, 126, 1),
        ),
      ),
      home: BlocProvider(
        create: (_) => TimerBloc(ticker: Ticker()),
        child: const TimerView(),
      ),
    );
  }
}
