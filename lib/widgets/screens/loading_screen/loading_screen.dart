import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/extensions/list_widget_extensions.dart';
import 'package:der_die_das/widgets/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  static const _numberSegments = 4;
  static const _segmentDuration = 0.75;

  int get _totalDuration => (_segmentDuration * _numberSegments * 1000).floor();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: _totalDuration),
      vsync: this,
    )
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        }
      });

    _animations = List.generate(
      _numberSegments,
      (index) => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            (index * _segmentDuration) / _numberSegments,
            ((index + 1) * _segmentDuration) / _numberSegments,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Opacity(
                    opacity: _animations[0].value,
                    child: const _Square(color: DFAColors.pink),
                  ),
                  Opacity(
                    opacity: _animations[1].value,
                    child: const _Square(color: DFAColors.blue),
                  ),
                ].intersperse(const Gap(_spacer)),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Opacity(
                    opacity: _animations[3].value,
                    child: const _Square(color: DFAColors.green),
                  ),
                  Opacity(
                    opacity: _animations[2].value,
                    child: const _Square(color: DFAColors.yellow),
                  ),
                ].intersperse(const Gap(_spacer)),
              ),
            ].intersperse(const Gap(_spacer)),
          ),
        ),
      ),
    );
  }
}

const _spacer = 5.0;
const _size = 75.0;

class _Square extends StatelessWidget {
  const _Square({required this.color, Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: _size,
      height: _size,
    );
  }
}
