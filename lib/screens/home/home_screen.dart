import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payments_app/localization/localization_text.dart';

class TransactionRowData {
  final String logo;
  final String companyName;
  final String type;
  final String amount;
  const TransactionRowData({
    required this.logo,
    required this.companyName,
    required this.type,
    required this.amount,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TransactionRowData> transactionRowData = [
    TransactionRowData(
      logo: 'assets/images/apple_logo.svg',
      companyName: 'Apple Store',
      type: 'Entertainment',
      amount: '- \$5,99',
    ),
    TransactionRowData(
      logo: 'assets/images/spotify_logo.svg',
      companyName: 'Spotify',
      type: 'Music',
      amount: '- \$12,99',
    ),
    TransactionRowData(
      logo: 'assets/images/download_logo.svg',
      companyName: 'Money Transfer',
      type: 'Transaction',
      amount: '\$300',
    ),
    TransactionRowData(
      logo: 'assets/images/grocery_logo.svg',
      companyName: 'Grocery',
      type: 'Food',
      amount: '- \$88',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surface,
                            child: Icon(
                              Icons.person,
                              size: 30,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppLocalizationText.welcomeBack),
                              Text(
                                "Ambuj Gupta",
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  height: 231,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 1, 2, 60), // start color
                        const Color.fromARGB(255, 15, 13, 158), // end color
                      ],
                      begin: Alignment.centerLeft, // left side
                      end: Alignment.centerRight, // right side
                    ),

                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/images/chip.svg',
                                fit: BoxFit.contain,
                              ),
                              SvgPicture.asset(
                                'assets/images/inverted_wifi.svg',
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            '4562   1122   4595   7852',
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'AMBUJ GUPTA',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Expiry Date",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodySmall,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          "03/25",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 30),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CVV",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodySmall,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          "6986",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/mastercard_logo.svg',
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Mastercard",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface,
                          child: Icon(
                            Icons.arrow_upward,
                            size: 30,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          'Sent',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface,
                          child: Icon(
                            Icons.arrow_downward,
                            size: 30,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          'Receive',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface,
                          child: Icon(
                            Icons.paid_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          'Loan',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface,
                          child: Icon(
                            Icons.backup_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          'Top-Up',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(fontSize: 20),
                    ),
                    Text(
                      'Sell All',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: transactionRowData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return transactionRowWidget(
                      context: context,
                      logo: transactionRowData[index].logo,
                      companyName: transactionRowData[index].companyName,
                      type: transactionRowData[index].type,
                      amount: transactionRowData[index].amount,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget transactionRowWidget({
    required BuildContext context,
    String? logo,
    String? companyName,
    String? type,
    String? amount,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Flexible(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 21,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  child: SvgPicture.asset(logo ?? '', fit: BoxFit.contain),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName ?? '',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(fontSize: 16),
                    ),
                    Text(
                      type ?? '',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            amount ?? '',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: 16,
              color: ((amount ?? '').contains('-'))
                  ? null
                  : Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
