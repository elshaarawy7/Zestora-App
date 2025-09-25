import 'package:zestora/futcher/ui/data/buirger_prodact_date.dart';
import 'package:zestora/futcher/ui/data/fried_chaked_prodact.dart';
import 'package:zestora/futcher/ui/data/pasta_podact_data.dart';
import 'package:zestora/futcher/ui/data/pizaa_prodact_data.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';

final List<ProdactModel> allProducts = [
  ...pastaProducts,
  ...pizzaProducts,
  ...burgerList,
  ...friedChickenList,
];
