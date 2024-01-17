import 'package:calculator/CUSTOM_WIDGETS/button_widget.dart';
import 'package:calculator/CUSTOM_WIDGETS/screen_widget.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 500;
          double padding = isMobile ? 0 : 12;
          return Padding(
            padding: EdgeInsets.all(padding),
            child: Container(
                color: Colors.grey[800],
                constraints: BoxConstraints(
                  maxWidth: isMobile ? MediaQuery.of(context).size.width : 600,
                  maxHeight:
                      isMobile ? MediaQuery.of(context).size.height : 800,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: ScreenWidget()),
                    SizedBox(height: 10),
                    Expanded(child: ButtonWidget()),
                  ],
                )),
          );
        }),
      ),
    );
  }
}
