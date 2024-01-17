import 'package:calculator/logic.dart';
import 'package:flutter/material.dart';

class ScreenWidget extends StatefulWidget {
  const ScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreenWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends State<ScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          constraints: const BoxConstraints(
            minHeight: 200,
          ),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FittedBox(
                  child: ValueListenableBuilder(
                    valueListenable: displayValue,
                    builder: (context, value, child) => Text(
                      displayValue.value.toString(),
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 50,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
