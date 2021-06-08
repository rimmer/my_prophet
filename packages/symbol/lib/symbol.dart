import 'package:meta/meta.dart';
import 'package:base/prophecy/entity/prophecy.dart';

@immutable
class SymbolValues {
  final int digit;
  final String mineral;
  final List<String> colors;
  final String tarrot;
  final String name;

  const SymbolValues({
    @required this.digit,
    @required this.mineral,
    @required this.colors,
    @required this.tarrot,
    this.name = "",
  });
}

/// returns SymbolValues from prophecies object
SymbolValues getSymbolValues(
    Map<ProphecyType, ProphecyEntity> propheciesObject) {
  //

  final prophecyValues = <double>[
    propheciesObject[ProphecyType.INTERNAL_STRENGTH].value,
    propheciesObject[ProphecyType.MOODLET].value,
    propheciesObject[ProphecyType.AMBITION].value,
    propheciesObject[ProphecyType.INTUITION].value,
    propheciesObject[ProphecyType.LUCK].value,
  ];
}
