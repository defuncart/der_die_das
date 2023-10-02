import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TipsScreen extends StatelessWidget {
  static const routeName = 'TipsScreen';

  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips'),
        centerTitle: true,
      ),
      body: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: _tips.length,
          separatorBuilder: (context, _) => const SizedBox(
            height: 8,
          ),
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    Text(
                      _tips[index].description,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      _tips[index].example,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ].intersperse(const Gap(8)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Tip {
  const _Tip({
    required this.description,
    required this.example,
  });

  final String description;
  final String example;
}

final _tips = List.generate(
  20,
  (index) => _Tip(
      description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.',
      example: 'Example $index'),
);
