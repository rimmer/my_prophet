import 'package:meta/meta.dart';
import 'package:base/prophecy/entity/prophecy.dart';
// private
import 'src/models.dart';

const SymbolCombinations = <PropheciesRange, SymbolCombination>{
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 9,
    mineral: Gem.BlueTourmaline,
    colors: ["white", "bluegrey", "lightpurple"],
    tarrot: TarrotMajor.TheHermit,
    name: "sheep",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.Emerald,
    colors: ["green", "deeporange", "lightorange"],
    tarrot: TarrotMajor.TheFool,
    name: "leprechaun",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 6,
    mineral: Gem.Citrine,
    colors: ["lime", "brown", "bluegrey"],
    tarrot: TarrotMajor.TheStar,
    name: "dragon_turtle",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 2,
    mineral: Gem.Pearl,
    colors: ["purple", "lightblue", "deepred"],
    tarrot: TarrotMajor.TheHighPriestess,
    name: "gamayun",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.Garnet,
    colors: ["lightyellow", "lightorange", "lightgreen"],
    tarrot: TarrotMajor.Temperance,
    name: "fairy",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.FireOpal,
    colors: ["lightred", "orange", "red"],
    tarrot: TarrotMajor.TheHierophant,
    name: "fu_dog",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 2,
    mineral: Gem.Pearl,
    colors: ["cyan", "bluegrey", "teal"],
    tarrot: TarrotMajor.Lust,
    name: "meramid",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.Kyanite,
    colors: ["deepblue", "lightorange", "green"],
    tarrot: TarrotMajor.TheWheelOfFortune,
    name: "qilin",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 6,
    mineral: Gem.Carbuncle,
    colors: ["deeporange", "black", "deepred"],
    tarrot: TarrotMajor.TheEmpress,
    name: "ladybug",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.low,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.Ruby,
    colors: ["white", "brown", "grey"],
    tarrot: TarrotMajor.TheLovers,
    name: "rabbit",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.ordinary,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 4,
    mineral: Gem.BlueSapphire,
    colors: ["deepred", "deepblue", "bluegrey"],
    tarrot: TarrotMajor.TheChariot,
    name: "crab",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.high,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.Emerald,
    colors: ["lightpink", "green", "yellow"],
    tarrot: TarrotMajor.TheFool,
    name: "caravan_trader",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.low,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.Beryl,
    colors: ["teal", "cyan", "deepblue"],
    tarrot: TarrotMajor.TheMoon,
    name: "kappa",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.ordinary,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 4,
    mineral: Gem.Rhodolite,
    colors: ["purple", "teal", "grey"],
    tarrot: TarrotMajor.TheWorld,
    name: "spider",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.high,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.Pearl,
    colors: ["yellow", "lightblue", "lime"],
    tarrot: TarrotMajor.TheMoon,
    name: "household_deity",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.low,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 8,
    mineral: Gem.RedSpinel,
    colors: ["deeppurple", "deepred", "white"],
    tarrot: TarrotMajor.TheEmperor,
    name: "crown",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.ordinary,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.OrangeTopaz,
    colors: ["deepred", "deeppurple", "lightgreen"],
    tarrot: TarrotMajor.Temperance,
    name: "horse",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.high,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.Zircon,
    colors: ["lime", "lightyellow", "orange"],
    tarrot: TarrotMajor.TheMagician,
    name: "green_dragon",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.low,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.Alexandrite,
    colors: ["yellow", "grey", "brown"],
    tarrot: TarrotMajor.Temperance,
    name: "boar",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.ordinary,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 4,
    mineral: Gem.Topaz,
    colors: ["blue", "brown", "deeporange"],
    tarrot: TarrotMajor.TheChariot,
    name: "rooster",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.low,
    luck: Range.high,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.BlackPearl,
    colors: ["deeppurple", "deepred", "black"],
    tarrot: TarrotMajor.Judgment,
    name: "wolf",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.low,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.FireOpal,
    colors: ["red", "lightyellow", "black"],
    tarrot: TarrotMajor.Rebirth,
    name: "snake",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.ordinary,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 1,
    mineral: Gem.Ruby,
    colors: ["deepred", "brown", "grey"],
    tarrot: TarrotMajor.Temperance,
    name: "magic_goat",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.ordinary,
    luck: Range.high,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.Opal,
    colors: ["cyan", "yellow", "blue"],
    tarrot: TarrotMajor.Rebirth,
    name: "blue_phoenix",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.low,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 5,
    mineral: Gem.Amber,
    colors: ["white", "deepred", "deepblue"],
    tarrot: TarrotMajor.TheSun,
    name: "eagle",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.ordinary,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.Pearl,
    colors: ["black", "grey", "lime"],
    tarrot: TarrotMajor.TheHangedMan,
    name: "raven",
  ),
  PropheciesRange(
    mood: Range.low,
    intuition: Range.high,
    luck: Range.high,
    ambition: Range.high,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 6,
    mineral: Gem.Zircon,
    colors: ["lightblue", "blue", "lightorange"],
    tarrot: TarrotMajor.TheHierophant,
    name: "xiezhi",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.low,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 4,
    mineral: Gem.Amethyst,
    colors: ["white", "grey", "bluegrey"],
    tarrot: TarrotMajor.Rebirth,
    name: "skeleton",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.low,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 2,
    mineral: Gem.BlueTourmaline,
    colors: ["blue", "yellow", "black"],
    tarrot: TarrotMajor.TheHighPriestess,
    name: "butterfly",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.low,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.Chrysolite,
    colors: ["green", "pink", "lime"],
    tarrot: TarrotMajor.TheEmpress,
    name: "clover",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.ordinary,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 8,
    mineral: Gem.Peridot,
    colors: ["white", "orange", "blue"],
    tarrot: TarrotMajor.TheFool,
    name: "monkey",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.ordinary,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 4,
    mineral: Gem.BlueSapphire,
    colors: ["lightblue", "lime", "deepgreen"],
    tarrot: TarrotMajor.Justice,
    name: "turtle",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.ordinary,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 7,
    mineral: Gem.YellowSapphire,
    colors: ["black", "white", "yellow"],
    tarrot: TarrotMajor.Lust,
    name: "lemur",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.high,
    luck: Range.low,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 2,
    mineral: Gem.Alexandrite,
    colors: ["grey", "yellow", "purple"],
    tarrot: TarrotMajor.TheMoon,
    name: "owl",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.high,
    luck: Range.ordinary,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 6,
    mineral: Gem.Rhodolite,
    colors: ["lightyellow", "brown", "lime"],
    tarrot: TarrotMajor.TheLovers,
    name: "seahorse",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.high,
    luck: Range.high,
    ambition: Range.low,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: 3,
    mineral: Gem.BlueSapphire,
    colors: ["deepred", "white", "brown"],
    tarrot: TarrotMajor.Judgment,
    name: "centicore",
  ),
  PropheciesRange(
    mood: Range.ordinary,
    intuition: Range.low,
    luck: Range.low,
    ambition: Range.ordinary,
    internalStrength: Range.low,
  ): SymbolCombination(
    digit: ,
    mineral: Gem,
    colors: ["", "", ""],
    tarrot: TarrotMajor,
    name: "",
  ),
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

/// returns PreparedSymbolCombination from prophecies object
PreparedSymbolCombination getSymbolCombination(
    Map<ProphecyType, ProphecyEntity> prophecy) {
  //

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
