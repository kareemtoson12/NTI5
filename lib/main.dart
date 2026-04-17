import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/textfieldFeature/cubit/text_field_cubit.dart';
import 'package:nti5/features/textfieldFeature/textfield_scree.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TextFieldCubit(),
        child: TextfieldScree(),
      ),
    );
  }
}
