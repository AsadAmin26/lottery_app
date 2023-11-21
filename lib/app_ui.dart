import 'dart:math';

import 'package:flutter/material.dart';

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  lotteryNumber() {
    setState(() {
      selectedNum = Random().nextInt(11);
    });
  }

  int lotteryNum = 10;
  int selectedNum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Center(
            child: Text(
              'Lottery',
              style: TextStyle(
                  fontFamily: 'Kdam', fontSize: 22, letterSpacing: 8.0),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The lottery number is : $lotteryNum',
                  style: const TextStyle(
                      fontFamily: 'Kdam',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.grey[350],
                  height: 200,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/error.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Lottery',
                              style: TextStyle(
                                  fontFamily: 'Kdam',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        selectedNum == lotteryNum
                            ? Text(
                                'Congratulations! You have won the lottery. The Selected Number is : $selectedNum',
                                style: const TextStyle(
                                    fontFamily: 'Kdam', fontSize: 16),
                                textAlign: TextAlign.center,
                              )
                            : Text(
                                'Sorry! Better luck next time. The Selected Number is : $selectedNum',
                                style: const TextStyle(
                                    fontFamily: 'Kdam', fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: lotteryNumber,
          child: const Icon(Icons.refresh),
        ), //
      ),
    );
  }
}
