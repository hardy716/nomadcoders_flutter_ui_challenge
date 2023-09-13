import 'package:flutter/material.dart';
import 'package:nomadcoder_flutter_ui_challenge/widget/button.dart';
import 'package:nomadcoder_flutter_ui_challenge/widget/card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Icon(
                        Icons.menu_sharp,
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                      buttonText: 'Transfer',
                      buttonTextColor: Colors.black,
                      buttonBackgroundColor: const Color(0xFFF2B33A),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Button(
                      buttonText: 'Request',
                      buttonTextColor: Colors.white.withOpacity(0.9),
                      buttonBackgroundColor: const Color(0xFF1F2123),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const CurencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_sharp,
                  cardContentColor: Colors.white,
                  cardBackgroundColor: Colors.green,
                  order: 0,
                ),
                const CurencyCard(
                  name: 'Rupee',
                  code: 'INR',
                  amount: '28 981',
                  icon: Icons.currency_rupee_sharp,
                  cardContentColor: Colors.black,
                  cardBackgroundColor: Colors.white,
                  order: 1,
                ),
                const CurencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_sharp,
                  cardContentColor: Colors.white,
                  cardBackgroundColor: Colors.blueGrey,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
