import 'package:calculater_app/provider/theme_provider.dart';
import 'package:calculater_app/utils/global.dart';
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Consumer<ThemeProvider>(
                builder: (context, value1, child) => Switch(
                  value: value1.isLight,
                  onChanged: (value) {
                    value1.changeTheme();
                  },
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "2+2",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 90),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: Text(
                          "${buttons[index]}",
                          style: const TextStyle(fontSize: 27),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
* ${buttons[index]}
* */