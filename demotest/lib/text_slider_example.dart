import 'package:demotest/style/colors.dart';
import 'package:demotest/style/font.dart';
import 'package:demotest/style/spacings.dart';
import 'package:flutter/material.dart';

@immutable
class TextSliderExemple extends StatefulWidget {
  const TextSliderExemple({super.key});
  @override
  State<TextSliderExemple> createState() => _TextSliderState();
}
class _TextSliderState extends State<TextSliderExemple> {
  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];
  int _index = 0;
  final PageController _pageController = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 60,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _items.length,
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalPadding),
                  child: Text(
                    _items[index],
                    textAlign: TextAlign.center,
                    style: kItalicText,
                  ),
                );
              },
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPaddingL),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _items.map((e) {
                int currentIndex = _items.indexOf(e);
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    debugPrint(currentIndex.toString());
                    _pageController.animateToPage(currentIndex,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut);
                    setState(() {
                      _index = currentIndex;
                    });
                  },

                );
              }).toList()),
        )
      ],
    );
  }
}