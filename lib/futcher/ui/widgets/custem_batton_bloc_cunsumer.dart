import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/logic/manger/cubit/payemnt_cubit.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';

class CustemBattonBlocCunsumer extends StatelessWidget {
  const CustemBattonBlocCunsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PayemntCubit, PayemntState>(
      listener: (context, state) {
        if (state is PayemntSucsess) {
          context.go(AppRouter.thenkViewPage);
        }

        if (state is PayemntFuiler) {
          context.go(AppRouter.KHomePage);
          SnackBar snackBar = SnackBar(content: Text(state.errorMassege));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomGreenButton(
          isLoding: state is PayemntCubit ? true : false,
          text: 'contanue',
          onPressed: () {
            PaymentIntetInputModel paymentIntetInputModel =
                PaymentIntetInputModel(
                  amount: "100",
                  currency: "USD",
                  customer_id: 'cus_SzBFr59UUlSGws',
                );
            BlocProvider.of<PayemntCubit>(
              context,
            ).mackPayment(paymentIntetInputModel: paymentIntetInputModel);
          },
        );
      },
    );
  }
}
