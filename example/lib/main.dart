import 'package:flutter/material.dart';
import 'package:price_converter/price_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Price Converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("formatted price(String) to price(double) :\n ₹50,685.56 -> ${PriceConverter.getOnlyPrice(currency: "₹", price: "₹50,685.56")}",
              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15,),

            Text("price(double) to formatted price(string) :\n 50685.56 -> ${PriceConverter.getFormattedPrice(currency: "₹", price: 50685.56)}",
              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,),

          ],
        ),
      ),
    );
  }
}