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
SymbolValues getSymbolValues(Map<ProphecyType, ProphecyEntity> prophecy) {
  //

  final intrStr = prophecy[ProphecyType.INTERNAL_STRENGTH].value;
  final mood = prophecy[ProphecyType.MOODLET].value;
  final ambit = prophecy[ProphecyType.AMBITION].value;
  final intui = prophecy[ProphecyType.INTUITION].value;
  final luck = prophecy[ProphecyType.LUCK].value;

  if (intrStr > 90.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 7,
      mineral: "alexandrite",
      colors: ["green", "grey"],
      tarrot: "tarrot_major_world",
      name: "tree_of_wisdom",
    );

  if (intrStr > 80.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 8,
      mineral: "amber",
      colors: ["orange", "brown"],
      tarrot: "tarrot_major_justice",
      name: "winged_wolf",
    );

  if (intrStr > 70.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 9,
      mineral: "beryl",
      colors: ["lightblue", "grey"],
      tarrot: "tarrot_major_world",
      name: "world_turtle",
    );

  if (intrStr > 60.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 8,
      mineral: "carbuncle",
      colors: ["red", "green"],
      tarrot: "tarrot_major_rebirth",
      name: "manticore",
    );

  if (intrStr > 50.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 4,
      mineral: "rhodolite",
      colors: ["black", "purple"],
      tarrot: "tarrot_major_high_priestess",
      name: "fantasy_spider",
    );
}
