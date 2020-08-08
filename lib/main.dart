import 'package:flutter/material.dart';
import 'package:food_drive/core/bloc_provider_scope.dart';
import 'package:food_drive/screen/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen/screen.dart';

TextTheme get oswaldTextTheme {
  return TextTheme(
    headline1: GoogleFonts.oswald(fontSize: 88, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.oswald(fontSize: 55, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.oswald(fontSize: 44, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.oswald(fontSize: 31, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.oswald(fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.oswald(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.oswald(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.firaSans(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.firaSans(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.firaSans(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

TextTheme get antonTextTheme {
  return TextTheme(
    headline1: GoogleFonts.anton(fontSize: 69, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.anton(fontSize: 43, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.anton(fontSize: 35, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.anton(fontSize: 25, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.anton(fontSize: 17, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.anton(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.anton(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.anton(fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.firaSans(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.firaSans(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.firaSans(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

TextTheme get bebasNeueTextTheme {
  return TextTheme(
    headline1: GoogleFonts.bebasNeue(fontSize: 73, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.bebasNeue(fontSize: 46, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.bebasNeue(fontSize: 36, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.bebasNeue(fontSize: 26, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.bebasNeue(fontSize: 18, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.bebasNeue(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.bebasNeue(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.bebasNeue(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.firaSans(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.firaSans(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.firaSans(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

void main() => runApp(BlocProviderScope(child: App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Drive',
      theme: ThemeData(textTheme: antonTextTheme),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width > 720) {
      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FirstPage(
                onNext: () {},
                onSearch: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (_) => SearchScreen(),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 0.1,
              color: Colors.grey,
            ),
            Container(
              width: 400.0,
              child: SecondPage(
                onPrev: () {},
              ),
            ),
          ],
        ),
      );
    }

    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        FirstPage(
          onNext: () => pageController.nextPage(duration: Duration(milliseconds: 720), curve: Curves.fastLinearToSlowEaseIn),
          onSearch: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, _, __) => SearchScreen(),
                opaque: false,
              ),
            );
          },
        ),
        SecondPage(
          onPrev: () => pageController.previousPage(duration: Duration(milliseconds: 720), curve: Curves.fastLinearToSlowEaseIn),
        ),
      ],
    );
  }
}
