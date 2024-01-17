import 'package:calculator/logic.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const ClearScreen(),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("[DC-5]",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 1.5,
                      )),
                ),
                const SizedBox(width: 10),
                const DeleteLastCharacter(),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                const Expanded(
                  child: CustomButton(
                    text: '1',
                    buttonColor: Colors.white,
                    buttonValue: "1",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '2',
                    buttonColor: Colors.white,
                    buttonValue: "2",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '3',
                    buttonColor: Colors.white,
                    buttonValue: "3",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    text: '+',
                    buttonColor: Colors.orange[700]!,
                    buttonValue: "+",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                const Expanded(
                  child: CustomButton(
                    text: '4',
                    buttonColor: Colors.white,
                    buttonValue: "4",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '5',
                    buttonColor: Colors.white,
                    buttonValue: "5",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '6',
                    buttonColor: Colors.white,
                    buttonValue: "6",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    text: '-',
                    buttonColor: Colors.orange[700]!,
                    buttonValue: "-",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                const Expanded(
                  child: CustomButton(
                    text: '7',
                    buttonColor: Colors.white,
                    buttonValue: "7",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '8',
                    buttonColor: Colors.white,
                    buttonValue: "8",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '9',
                    buttonColor: Colors.white,
                    buttonValue: "9",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    text: 'x',
                    buttonColor: Colors.orange[700]!,
                    buttonValue: "*",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const Expanded(
                    child: CustomButton(
                        text: ".",
                        buttonColor: Colors.white,
                        buttonValue: ".")),
                const SizedBox(width: 10),
                const Expanded(
                  child: CustomButton(
                    text: '0',
                    buttonColor: Colors.white,
                    buttonValue: "0",
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: CalculateFinal(),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    text: '/',
                    buttonColor: Colors.orange[700]!,
                    buttonValue: "/",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text;
  final Color buttonColor;
  final String buttonValue;

  const CustomButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.buttonValue,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          updateDisplayValue(widget.buttonValue);
        });
      },
      color: widget.buttonColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class CalculateFinal extends StatefulWidget {
  const CalculateFinal({super.key});

  @override
  State<CalculateFinal> createState() => _CalculateFinalState();
}

class _CalculateFinalState extends State<CalculateFinal> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.orange[700],
      onPressed: () {
        setState(() {
          calculate();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "=",
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class ClearScreen extends StatefulWidget {
  const ClearScreen({super.key});

  @override
  State<ClearScreen> createState() => _ClearScreenState();
}

class _ClearScreenState extends State<ClearScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.red[400],
      onPressed: () {
        setState(() {
          clear();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "AC",
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class DeleteLastCharacter extends StatefulWidget {
  const DeleteLastCharacter({super.key});

  @override
  State<DeleteLastCharacter> createState() => _DeleteLastCharacterState();
}

class _DeleteLastCharacterState extends State<DeleteLastCharacter> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.red[400],
      onPressed: () {
        setState(() {
          deleteLastCharacter();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "DEL",
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
