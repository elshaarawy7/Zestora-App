import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zestora/futcher/logic/manger/cubit/payemnt_cubit.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';

class CustemBattonBlocCunsumer extends StatelessWidget {
  const CustemBattonBlocCunsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PayemntCubit , PayemntState>(
      listener: (context, state) {
        if(state is PayemntSucsess){
          
        }
      },
      builder: (context, state) {
        return CustomGreenButton(
          isLoding: state is PayemntCubit ? true : false,
          text: 'contanue', onPressed: () {});
      },
    );
  }
}
