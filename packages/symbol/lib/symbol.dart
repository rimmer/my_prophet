import 'package:meta/meta.dart';
import 'package:base/prophecy/entity/prophecy.dart';
// private
import 'src/models.dart';

/// returns PreparedSymbolCombination from prophecies object
PreparedSymbolCombination getSymbolCombination(
    Map<ProphecyType, ProphecyEntity> prophecy) {
  //

  const SymbolCombinations = <PropheciesRange, SymbolCombination>{
    PropheciesRange(
      mood: Range.high,
      intuition: Range.ordinary,
      luck: Range.low,
      ambition: Range.ordinary,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 4,
      mineral: Gem.Peridot,
      colors: ["teal", "lime", "green"],
      tarrot: TarrotMajor.Judgment,
      name: "pike_fish",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.ordinary,
      luck: Range.ordinary,
      ambition: Range.ordinary,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 1,
      mineral: Gem.OrangeTopaz,
      colors: ["yellow", "orange", "deeporange"],
      tarrot: TarrotMajor.TheHierophant,
      name: "golden_bull",
    ),
    PropheciesRange(
        internalStrength: Range.high,
        mood: Range.high,
        ambition: Range.ordinary,
        intuition: Range.ordinary,
        luck: Range.high): SymbolCombination(
      digit: 8,
      mineral: Gem.Rhodolite,
      colors: ["deeppurple", "brown", "green"],
      tarrot: TarrotMajor.Strength,
      name: "bear",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.low,
      ambition: Range.ordinary,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 9,
      mineral: Gem.Citrine,
      colors: ["lightgreen", "yellow", "lightblue"],
      tarrot: TarrotMajor.TheMagician,
      name: "mage",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.ordinary,
      ambition: Range.ordinary,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 6,
      mineral: Gem.Kyanite,
      colors: ["grey", "bluegrey", "white"],
      tarrot: TarrotMajor.TheWorld,
      name: "elephant",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.high,
      ambition: Range.ordinary,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 3,
      mineral: Gem.OrangeSapphire,
      colors: ["brown", "lightyellow", "white"],
      tarrot: TarrotMajor.TheEmpress,
      name: "griffin",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.low,
      luck: Range.low,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 3,
      mineral: Gem.Aquamarine,
      colors: ["deepblue", "grey", "blue"],
      tarrot: TarrotMajor.TheFool,
      name: "shark",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.low,
      luck: Range.ordinary,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 6,
      mineral: Gem.Amber,
      colors: ["brown", "teal", "grey"],
      tarrot: TarrotMajor.TheTower,
      name: "golem",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.ordinary,
      luck: Range.low,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 4,
      mineral: Gem.Emerald,
      colors: ["darkgreen", "yellow", "teal"],
      tarrot: TarrotMajor.TheHangedMan,
      name: "gremlin",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.ordinary,
      luck: Range.ordinary,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 1,
      mineral: Gem.Onyx,
      colors: ["deeporange", "cyan", "black"],
      tarrot: TarrotMajor.TheWheelOfFortune,
      name: "magic_elk",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.low,
      luck: Range.high,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 4,
      mineral: Gem.BlueTourmaline,
      colors: ["white", "lightpink", "lightblue"],
      tarrot: TarrotMajor.TheLovers,
      name: "snowman",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.ordinary,
      luck: Range.high,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 1,
      mineral: Gem.Ruby,
      colors: ["red", "yellow", "orange"],
      tarrot: TarrotMajor.Strength,
      name: "red_dragon",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.low,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 8,
      mineral: Gem.Carbuncle,
      colors: ["deepred", "teal", "red"],
      tarrot: TarrotMajor.Rebirth,
      name: "manticore",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.ordinary,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 8,
      mineral: Gem.Amber,
      colors: ["orange", "brown", "yellow"],
      tarrot: TarrotMajor.Justice,
      name: "winged_wolf",
    ),
    PropheciesRange(
      mood: Range.high,
      intuition: Range.high,
      luck: Range.high,
      ambition: Range.high,
      internalStrength: Range.high,
    ): SymbolCombination(
      digit: 7,
      mineral: Gem.Alexandrite,
      colors: ["green", "grey", "bluegrey"],
      tarrot: TarrotMajor.TheWorld,
      name: "tree_of_wisdom",
    ),
  };

  final prophecyValues = PropheciesRange(
    mood: rangeFromValue(prophecy[ProphecyType.MOODLET].value),
    intuition: rangeFromValue(prophecy[ProphecyType.INTUITION].value),
    luck: rangeFromValue(prophecy[ProphecyType.LUCK].value),
    ambition: rangeFromValue(prophecy[ProphecyType.AMBITION].value),
    internalStrength:
        rangeFromValue(prophecy[ProphecyType.INTERNAL_STRENGTH].value),
  );

  return PreparedSymbolCombination(SymbolCombinations[prophecyValues]);
}

@immutable
class SymbolCombination {
  final int digit;
  final Gem mineral;
  final List<String> colors;
  final TarrotMajor tarrot;
  final String name;

  const SymbolCombination({
    @required this.digit,
    @required this.mineral,
    @required this.colors,
    @required this.tarrot,
    this.name = "",
  });
}

@immutable
class PreparedSymbolCombination {
  final String digit;
  final String mineral;
  final List<String> colors;
  final String tarrot;

  PreparedSymbolCombination(SymbolCombination sv)
      : this.digit = DigitToFileName[sv.digit],
        this.mineral = GemToFileName[sv.mineral],
        this.colors = sv.colors,
        this.tarrot = TarrotMajorToFileName[sv.tarrot];
}
