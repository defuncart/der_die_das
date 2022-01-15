import 'package:der_die_das/configs/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResultsScreen extends StatelessWidget {
  static const routeName = 'ResultsScreen';

  const ResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Gap(16),
          Center(
            child: Text(
              'You scored 15/20!',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const Gap(16),
          Center(
            child: Text(
              'New highscore! 🏆',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const Gap(32),
          const Center(
            child: Text('Mistakes:'),
          ),
          const Gap(8),
          const Center(
            child: Text(
              'die Freiheit',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.purple,
                width: 2,
              ),
            ),
            margin: const EdgeInsets.all(8),
            // color: AppColors.purple,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: const [
                  Icon(Icons.lightbulb_outline,
                      // color: Theme.of(context).scaffoldBackgroundColor,
                      color: AppColors.purple),
                  Gap(16),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Nomen mit der Endung ',
                            style: TextStyle(
                              // color: Theme.of(context).scaffoldBackgroundColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '–heit',
                            style: TextStyle(
                              // color: Theme.of(context).scaffoldBackgroundColor,
                              color: AppColors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' haben den Artikel ',
                            style: TextStyle(
                              // color: Theme.of(context).scaffoldBackgroundColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'die',
                            style: TextStyle(
                              // color: Theme.of(context).scaffoldBackgroundColor,
                              color: AppColors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
