import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradings/app/theme/dark_theme.dart';
import 'package:tradings/app/theme/light_theme.dart';
import 'package:tradings/app/theme/theme_meneger.dart';
import 'package:tradings/app/view/res/wb_scr.dart';

import 'app/view/pages/settings/comp/settings_widget.dart';
import 'app/view/pages/welcome/welcome_page.dart';
import 'app/view/res/custom_textstyles.dart';

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
              SettingsWidget(
                  title: "Privacy policy",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WbScr(
                          title: 'Privacy policy',
                          url: Links.privacyPolicy,
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 14),
              SettingsWidget(
                  title: "Terms of use",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WbScr(
                          title: 'Terms of use',
                          url: Links.termOfUse,
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 14),
              SettingsWidget(
                  title: "Support",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WbScr(
                          title: 'Support',
                          url: Links.supportForm,
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 14),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dark mode',
                        style: CustomTextStyles.customTextStyle(
                          color: Theme.of(context).colorScheme.background,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CupertinoSwitch(
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
            ],
          ),
        ),
      ),
    );
  }
}

class Links {
  static const String privacyPolicy =
      'https://doc-hosting.flycricket.io/body-fit-pro-privacy-policy/946e3bad-9f90-4b39-823e-4ba6be86db78/privacy';
  static const String termOfUse =
      'https://doc-hosting.flycricket.io/body-fit-pro-terms-of-use/0b24ecfb-78b5-4b02-8d51-e730bdcf303f/terms';
  static const String supportForm =
      'https://docs.google.com/forms/d/e/1FAIpQLSdepLdP210x9h6N8-Dn5cKXgCAeJgujEv8mR2Z08VyeUocgVw/viewform?usp=sf_link';
}
