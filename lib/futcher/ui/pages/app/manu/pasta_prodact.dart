import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/data_ui/pasta_podact_data.dart';
import 'package:zestora/futcher/ui/widgets/custem_catogry.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card_manu.dart';

class PastaProdact extends StatelessWidget {
  const PastaProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.go(AppRouter.KHomePage);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const CustomTextField(
              hintText: 'fast food',
              obscureText: false,
              prefixIcon: Icons.search,
            ),
            const SizedBox(height: 10),
            const CustemCatogory(),
            const SizedBox(height: 10),
            ProdactCardManu(products: pastaProducts),
          ],
        ),
      ),
    );
  }
}
