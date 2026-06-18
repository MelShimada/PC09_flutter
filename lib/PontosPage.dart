import 'package:flutter/material.dart';
import 'package:pc09/CustomButton.dart';

import 'l10n/app_localization.dart';

class PontosPage extends StatefulWidget{
  const PontosPage({super.key, required this.title});

  final String title;

  @override
  State<PontosPage> createState() => _PontosPageState();
}

class _PontosPageState extends State<PontosPage> {

  int _pontosTime1 = 0;
  int _pontosTime2 = 0;

  int lastTime=0;
  int lastPontos=0;

  void _incrementCounter(int time, int pontos) {
    setState(() {

      if (time == 1) {
        _pontosTime1 += pontos;
      } else {
        _pontosTime2 += pontos;
      }

      lastTime = time;
      lastPontos = pontos;

    });
  }

  void _decrementCounter() {
    setState(() {

      if (lastTime ==1){
        _pontosTime1 -= lastPontos;
      } else if (lastTime == 2){
        _pontosTime2 -= lastPontos;
      }

      lastTime = 0;
      lastPontos = 0;

    });
  }




  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("pontos page"), //Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(localizations.time1),
                    Text(
                      '$_pontosTime1',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),

                    CustomButton(
                      text: localizations.lanceLivre,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(1,1),
                    ),
                    CustomButton(
                      text: localizations.doisPontos,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(1,2),
                    ),
                    CustomButton(
                      text: localizations.tresPontos,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(1,3),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(localizations.time2),
                    Text(
                      '$_pontosTime2',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),

                    CustomButton(
                      text: localizations.lanceLivre,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(2,1),
                    ),
                    CustomButton(
                      text: localizations.doisPontos,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(2,2),
                    ),
                    CustomButton(
                      text: localizations.tresPontos,
                      padding: 10,
                      iconData: Icons.add,
                      spaceBetween: 10,
                      callback: () => _incrementCounter(2,3),
                    )
                  ],
                )

              ],

            ),
            CustomButton(
              text: localizations.voltarLance,
              padding: 10,
              iconData: Icons.remove,
              spaceBetween: 10,
              callback: lastTime !=0 ? _decrementCounter : null,
            )

          ],
        ),
      ),

    );
  }
}
