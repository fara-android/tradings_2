import 'package:flutter/material.dart';
import 'package:tradings/app/theme/dark_theme.dart';
import 'package:tradings/app/theme/light_theme.dart';
import 'package:tradings/app/theme/theme_meneger.dart';

import 'app/view/pages/settings/comp/settings_widget.dart';
import 'app/view/pages/welcome/welcome_page.dart';
import 'app/view/resources/custom_textstyles.dart';

void main() => runApp(const MyApp());

ThemeMeneger _themeMeneger = ThemeMeneger();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeMeneger.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeMeneger.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tradings',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMeneger.themeMode,
      home: const WelcomeScreen(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Settings",
                  style: CustomTextStyles.customTextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 19,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              SettingsWidget(title: "Privacy policy", onTap: () {}),
              const SizedBox(height: 14),
              SettingsWidget(title: "Terms of use", onTap: () {}),
              const SizedBox(height: 14),
              SettingsWidget(title: "Support", onTap: () {}),
              const SizedBox(height: 14),
              SettingsWidget(title: "Restore purchases", onTap: () {}),
              Switch(
                value: _themeMeneger.themeMode == ThemeMode.dark,
                onChanged: (newValue) {
                  setState(() {
                    _themeMeneger.toggleTheme(newValue);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
