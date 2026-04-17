// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 19:09:16

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/textfieldFeature/cubit/states.dart';
import 'package:nti5/features/textfieldFeature/cubit/text_field_cubit.dart';

class TextfieldScree extends StatelessWidget {
  const TextfieldScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TextFieldCubit, TextFieledStates>(
        builder: (context, state) {
          final myCubit = context.read<TextFieldCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  myCubit.updateName(value);
                },
              ),
              Text(state.name, style: TextStyle(fontSize: 40)),
            ],
          );
        },
      ),
    );
  }
}
