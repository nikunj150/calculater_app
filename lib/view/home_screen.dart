import 'package:calculater_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Consumer<ThemeProvider>(
                builder: (context, value1, child) =>
                    Switch(value: value1.isLight, onChanged: (value) {
                      value1.changeTheme();
                    },),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
