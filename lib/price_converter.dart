library price_converter;
import 'package:intl/intl.dart';

class PriceConverter {

  static double getOnlyPrice({required String currency,required String price}){
    double finalPrice = double.parse(price.isEmpty ? "0" : price.replaceAll(currency, "").replaceAll(",", ""));
    String strFinalPrice = finalPrice.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), '');
    return double.parse(strFinalPrice).isInt ? double.parse(strFinalPrice) : double.parse(strFinalPrice);
  }

  static String getFormattedPrice({required String currency,required double price}){
    String finalPrice =  price.isInt ? price.toStringAsFixed(0) : "$price";
    var formatter = NumberFormat('#,##,###.##');
    String finalString = formatter.format(double.parse(finalPrice)).replaceAll(".00", "").replaceAll(".0", "");
    return "$currency$finalString";
  }
}
extension NumExtensions on num {
  bool get isInt => (this % 1) == 0;
}
extension MeineVer on double {
  // String get toMoney => '$removeTrailingZeros₺';
  String get removeTrailingZeros {
    // return if complies to int
    if (this % 1 == 0) return toInt().toString();
    // remove trailing zeroes
    String str = '$this'.replaceAll(RegExp(r'0*$'), '');
    // reduce fraction max length to 2
    if (str.contains('.')) {
      final fr = str.split('.');
      if (2 < fr[1].length) {
        str = '${fr[0]}.${fr[1][0]}${fr[1][1]}';
      }
    }
    return str;
  }
}