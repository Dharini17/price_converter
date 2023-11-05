import 'package:flutter_test/flutter_test.dart';
import 'package:price_converter/price_converter.dart';

void main() {
  test('adds one to input values', () {
    print(PriceConverter.getOnlyPrice(currency: "\$", price: "\$5,562"));
    print(PriceConverter.getFormattedPrice(currency: "\$", price: 5562.00));
  });
}
