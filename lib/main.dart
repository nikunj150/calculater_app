import 'package:calculater_app/provider/theme_provider.dart';
import 'package:calculater_app/utils/app_routes.dart';
import 'package:calculater_app/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(

          theme: value.isLight?lightTheme:darkTheme,
          debugShowCheckedModeBanner: false,
          routes: screen_routes,
        ),
      ),
    ),
  );
}
