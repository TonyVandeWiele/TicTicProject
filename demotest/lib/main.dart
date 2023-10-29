import 'package:demotest/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}

/*
class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/logo.svg",
                height: kProfileSize,
              ),
              const SizedBox(
                height: kVerticalPaddingXL,
              ),
              const SizedBox(
                height: kVerticalPaddingXL,
              ),
              const Text(
                "L'harmonie financière dans vos groupes, en toutes simplicité !",
                textAlign: TextAlign.center,
                style: kItalicText,
              ),
              const SizedBox(
                height: kVerticalPadding,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoxSelection(color: Colors.white),
                  BoxSelection(color: kMainColor),
                  BoxSelection(color: Colors.white),
                  BoxSelection(color: Colors.white),
                ],
              ),
              const SizedBox(
                height: kVerticalPaddingXL,
              ),
              const SizedBox(
                height: kVerticalPaddingL,
              ),

              const MainButton(text: 'Continuer sans compte'),
              const SizedBox(
                height: kVerticalPaddingL,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 130,// Hauteur de la ligne
                    color: kMainColor,  // Couleur de la ligne
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
                    width: 130,// Hauteur de la ligne
                    color: kMainColor,   // Couleur de la ligne
                  ),
                ],
              ),
              const SizedBox(
                height: kVerticalPaddingL,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(text: 'Je me connecte'),
                  SizedBox(
                    width: kHorizontalPadding,
                  ),
                  MainButton(text: 'Créer mon compte'),
                ],
              ),
              //Passer param à mainButton const MainButton(text:'Value',onTap:(){},isMain:false)  et faire les 2 bouton avec ROW puis 4 row dans un container pour le truc du mid
            ], //Pas de MAGIC NUMBER !!!! Faire avec dossier Style
          ),
        ),
      ), //Pour l'encoche
    );
  }
} //ALT ENTER POUR REMOVE WIDGET OU WRAPPER

//FAIRE WIDGET CUSTOM QUI PRENDRE EN PARMAETRE chaine de caractere (BOOL) SI c'est font vert ou pas
*/
