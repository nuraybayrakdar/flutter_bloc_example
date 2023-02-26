import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'package:flutter_bloc_example/bloc/cats_cubit.dart';

class BlocCatsView extends StatefulWidget {
  const BlocCatsView({super.key});

  @override
  State<BlocCatsView> createState() => _BlocCatsViewState();
}

class _BlocCatsViewState extends State<BlocCatsView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CastCubit(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Hello"),
          ),
        ),
      ),
    );
  }
}
