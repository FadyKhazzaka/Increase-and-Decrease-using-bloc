import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/states.dart';

class CounterCubit extends Cubit<CounterStates> { //class extends to abstract class 
  CounterCubit() : super(CounterInitState()); // pass init state to super

  static CounterCubit get(BuildContext context) { // function to get object from cubit
    return BlocProvider.of(context);
  }

  int count = 0;

  void increaseNumber() {
    count++;
    emit(IncreaseState()); //rebuild screen 
  }

  void decreaseNumber() {
    count--;
    emit(DecreaseState()); //rebuild screen
  }
}
