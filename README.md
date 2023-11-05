## price_converter

Convert price with or without currency & formatter

## Features

- Convert Formatted price like ₹50,685.56 -> 50685.56
- Convert only price to formatted price like 50685.56 -> ₹50,685.56

<table>
    <tr>
        <td>
         <img width="300px" src="https://raw.githubusercontent.com/Dharini17/price_converter/master/screenshots/screenshot1.png">     
      </td>   
        <td></td>          
    </tr>   
</table>

## Installation

In your `pubspec.yaml` file within your Flutter Project:

```yaml
dependencies:
  price_converter: 0.0.1
```

## Usage

```dart

            import 'package:price_converter/price_converter.dart';
            
            //Convert formatted price(String) to price(double) - ₹50,685.56 
            double priceInDouble = PriceConverter.getOnlyPrice(currency: "₹", price: "₹50,685.56");
            //₹50,685.56 -> 50685.56
            
            //Convert price(double) to formatted price(string) - 50685.56
            String priceInString = PriceConverter.getFormattedPrice(currency: "₹", price: 692550685.56);
            //50685.56 -> ₹50,685.56

```