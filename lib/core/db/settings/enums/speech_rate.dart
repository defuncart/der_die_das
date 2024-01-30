enum SpeechRate {
  oneQuarter(0.25),
  oneHalf(0.5),
  threeQuarters(0.75),
  standard(1.0),
  oneAndOneQuarter(1.25);

  const SpeechRate(this.value);

  final double value;
}

extension SpeechRateDoubleExtension on double {
  SpeechRate get asTextToSpeechRate => switch (this) {
        0.25 => SpeechRate.oneQuarter,
        0.5 => SpeechRate.oneHalf,
        0.75 => SpeechRate.threeQuarters,
        1.0 => SpeechRate.standard,
        1.25 => SpeechRate.oneAndOneQuarter,
        _ => throw ArgumentError.value(this),
      };
}
