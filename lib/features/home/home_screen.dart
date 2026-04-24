// Karim Toson || kareemtoson1@gmail.com || Fri Apr 24 2026 16:35:03

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/home/cubit/home_cubit.dart';
import 'package:nti5/features/home/cubit/states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController ageController;

  @override
  void initState() {
    ageController = TextEditingController();
    context.read<HomeCubit>().getAge();
    super.initState();
  }

  @override
  void dispose() {
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: ageController),
          BlocBuilder<HomeCubit, HomeStates>(
            builder: (context, state) {
              final myCubit = context.read<HomeCubit>();
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      myCubit.saveAge(int.parse(ageController.text));
                    },
                    child: Text('save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myCubit.deletAge();
                    },
                    child: Text('delete'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myCubit.getAge();
                    },
                    child: Text('get'),
                  ),
                ],
              );
            },
          ),

          BlocBuilder<HomeCubit, HomeStates>(
            builder: (context, state) {
              if (state is GetState) {
                return Text('my age is  ${state.age}');
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
