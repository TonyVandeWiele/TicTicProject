import 'package:demotest/screens/welcome_screen.dart';
import 'package:demotest/style/colors.dart';
import 'package:demotest/style/font.dart';
import 'package:demotest/style/spacings.dart';
import 'package:flutter/material.dart';

import 'box_selection.dart';

@immutable
class TextSlider extends StatefulWidget {
  const TextSlider({super.key});

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  final _textList = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];
  int _index = 0;
  final PageController _pageController = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 500,
          child: PageView.builder(
              controller: _pageController,
              itemCount: _textList.length,
              onPageChanged: (index) {
              setState(() {
                  _index = index;
                });
              },
              itemBuilder: (context, index) {
                return showingText(_textList[index]);
              }),
        ),
        /*LineItem(
          width:
          MediaQuery.of(context).size.width / (2 * _items.length),
          isActivated: currentIndex == _index,
        ),*/
        const Padding(
          padding: EdgeInsets.symmetric(vertical: kVerticalPaddingXL),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoxSelection(color: Colors.white),
              BoxSelection(color: Colors.white),
              BoxSelection(color: Colors.white),
              BoxSelection(color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

Widget showingText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: kItalicText,
    ),
  );
} //ALT ENTER POUR REMOVE WIDGET OU WRAPPER
