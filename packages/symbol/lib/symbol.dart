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
      colors: ["green", "grey", "lightgreen"],
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
      colors: ["orange", "brown", "yellow"],
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
      colors: ["lightblue", "grey", "lightgreen"],
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
      colors: ["red", "green", "yellow"],
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
      colors: ["black", "purple", "white"],
      tarrot: "tarrot_major_high_priestess",
      name: "fantasy_spider",
    );

  if (intrStr > 40.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 8,
      mineral: "emerald",
      colors: ["deeppurple", "yellow", "darkgreen"],
      tarrot: "tarrot_major_emperor",
      name: "knight",
    );

  if (intrStr > 26.0 &&
      mood > 90.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 3,
      mineral: "blue_sapphire",
      colors: ["grey", "white", "lightblue"],
      tarrot: "tarrot_major_hanged_man",
      name: "meramid",
    );

  if (intrStr > 90.0 &&
      mood > 80.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 1,
      mineral: "ruby",
      colors: ["red", "yellow", "orange"],
      tarrot: "tarrot_major_strength",
      name: "red_dragon",
    );

  if (intrStr > 90.0 &&
      mood > 70.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 5,
      mineral: "opal",
      colors: ["brown", "green", "black"],
      tarrot: "tarrot_major_temperance",
      name: "magic_spear",
    );

  if (intrStr > 90.0 &&
      mood > 60.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 2,
      mineral: "garnet",
      colors: ["deepblue", "deeporange", "white"],
      tarrot: "tarrot_major_lust",
      name: "octopus",
    );

  if (intrStr > 90.0 &&
      mood > 50.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 1,
      mineral: "purple_spinel",
      colors: ["lightpurple", "blue", "pink"],
      tarrot: "tarrot_major_fool",
      name: "garden_gnome",
    );

  if (intrStr > 90.0 &&
      mood > 40.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 9,
      mineral: "zircon",
      colors: ["deepred", "deepblue", "white"],
      tarrot: "tarrot_major_chariot",
      name: "blue_phoenix",
    );

  if (intrStr > 90.0 &&
      mood > 27.0 &&
      ambit > 90.0 &&
      intui > 90.0 &&
      luck > 90.0)
    return SymbolValues(
      digit: 7,
      mineral: "citrine",
      colors: ["yellow", "deepgreen", "black"],
      tarrot: "tarrot_major_judgment",
      name: "green_snake",
    );
}
