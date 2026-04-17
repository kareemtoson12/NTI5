// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 16:21:00

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/counter/cubit/counter_cubit.dart';
import 'package:nti5/features/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) {
            final myCubit = context.read<CounterCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${state.counterValue}', style: TextStyle(fontSize: 40)),
                ElevatedButton(
                  onPressed: () {
                    myCubit.increment();
                    print('build inisde set state');
                  },
                  child: Icon(Icons.add),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
