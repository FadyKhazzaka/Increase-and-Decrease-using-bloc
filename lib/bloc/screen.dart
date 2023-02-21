import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/cubit.dart';
import 'package:task2/bloc/states.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          CounterCubit cubit = CounterCubit.get(context);

          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        cubit.decreaseNumber();
                      },
                      icon: const Icon(
                        Icons.minimize,
                        size: 33,
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Text(
                        '${cubit.count}',
                        style: const TextStyle(
                            fontSize: 66, fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        cubit.increaseNumber();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 33,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
