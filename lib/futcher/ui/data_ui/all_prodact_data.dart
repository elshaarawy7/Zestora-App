import 'package:zestora/futcher/ui/data_ui/buirger_prodact_date.dart';
import 'package:zestora/futcher/ui/data_ui/fried_chaked_prodact.dart';
import 'package:zestora/futcher/ui/data_ui/pasta_podact_data.dart';
import 'package:zestora/futcher/ui/data_ui/pizaa_prodact_data.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';

final List<ProdactModel> allProducts = [
  ...pastaProducts,
  ...pizzaProducts,
  ...burgerList,
  ...friedChickenList,
];
