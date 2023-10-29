import 'package:demotest/screens/register_screen.dart';
import 'package:demotest/style/colors.dart';
import 'package:demotest/style/font.dart';
import 'package:demotest/style/spacings.dart';
import 'package:demotest/text_slider_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main_button.dart';
import '../box_selection.dart';
import '../text_slider.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/';

  WelcomeScreen({super.key});

  final PageController _pageController = PageController(initialPage: 1);

  List<String> textList = [
    "L'harmonie financière dans vos groupes en toute simplicité !",
    "Gérez vos comptes n'a jamais été aussi simple !",
    "Des finances saines pour un avenir serein !",
    "Créez un compte et rejoingnez-nous !",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/back1.png"),
              fit: BoxFit.fill,
            ),
          ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: kVerticalPaddingXL,
                ),
                const SizedBox(
                  height: kVerticalPaddingL,
                ),
                SvgPicture.asset(
                  "assets/icons/logo.svg",
                  height: kProfileSize,
                ),
                const SizedBox(
                  height: kVerticalPaddingXL,
                ),

                const TextSlider(),

                MainButton(
                  text: 'Continuer sans compte',
                  onTap: () {},
                  isMain: true,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 130, // Hauteur de la ligne
                      color: kMainColor, // Couleur de la ligne
                    ),
                    const SizedBox(
                      width: kHorizontalPaddingS,
                    ),
                    const Text(
                      "Ou",
                      style: kLabelStyle,
                    ),
                    const SizedBox(
                      width: kHorizontalPaddingS,
                    ),
                    Container(
                      height: 1,
                      width: 130, // Hauteur de la ligne
                      color: kMainColor, // Couleur de la ligne
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainButton(
                      text: 'Je me connecte',
                      onTap: () {},
                      isMain: false,
                    ),
                    const SizedBox(
                      width: kHorizontalPadding,
                    ),
                    MainButton(
                        text: 'Créer mon compte',
                        onTap: () => Navigator.pushNamed(
                            context, RegisterScreen.routeName),
                        isMain: false),
                  ],
                ),
                //Passer param à mainButton const MainButton(text:'Value',onTap:(){},isMain:false)  et faire les 2 bouton avec ROW puis 4 row dans un container pour le truc du mid
              ], //Pas de MAGIC NUMBER !!!! Faire avec dossier Style
            ),
          ),
        ), //Pour l'encoche
    ));
  }
}

