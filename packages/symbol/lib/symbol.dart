import 'package:meta/meta.dart';
import 'package:base/prophecy/entity/prophecy.dart';

enum TarrotMajor {
  TheMagician,
  TheHighPriestess,
  TheEmpress,
  TheEmperor,
  TheHierophant,
  TheLovers,
  TheChariot,
  Strength,
  TheHermit,
  TheWheelOfFortune,
  Justice,
  TheHangedMan,
  Rebirth,
  Temperance,
  Lust,
  TheTower,
  TheStar,
  TheMoon,
  TheSun,
  Judgment,
  TheFool,
  TheWorld,
}

const TarrotMajorToFileName = {
  TarrotMajor.TheMagician: "tarrot_major_magician.png",
  TarrotMajor.TheHighPriestess: "tarrot_major_high_priestess.png",
  TarrotMajor.TheEmpress: "tarrot_major_empress.png",
  TarrotMajor.TheEmperor: "tarrot_major_emperor.png",
  TarrotMajor.TheHierophant: "tarrot_major_hierophant.png",
  TarrotMajor.TheLovers: "tarrot_major_lovers.png",
  TarrotMajor.TheChariot: "tarrot_major_chariot.png",
  TarrotMajor.Strength: "tarrot_major_strength.png",
  TarrotMajor.TheHermit: "tarrot_major_hermit.png",
  TarrotMajor.TheWheelOfFortune: "tarrot_major_fortune.png",
  TarrotMajor.Justice: "tarrot_major_justice.png",
  TarrotMajor.TheHangedMan: "tarrot_major_hanged_man.png",
  TarrotMajor.Rebirth: "tarrot_major_rebirth.png",
  TarrotMajor.Temperance: "tarrot_major_temperance.png",
  TarrotMajor.Lust: "tarrot_major_lust.png",
  TarrotMajor.TheTower: "tarrot_major_tower.png",
  TarrotMajor.TheStar: "tarrot_major_star.png",
  TarrotMajor.TheMoon: "tarrot_major_moon.png",
  TarrotMajor.TheSun: "tarrot_major_sun.png",
  TarrotMajor.Judgment: "tarrot_major_judgment.png",
  TarrotMajor.TheFool: "tarrot_major_fool.png",
  TarrotMajor.TheWorld: "tarrot_major_world.png",
};

enum Gem {
  Pearl,
  Diamond,
  Ruby,
  Garnet,
  RedTourmaline,
  RedSpinel,
  Carbuncle,
  FireOpal,
  Amber,
  OrangeSapphire,
  OrangeTopaz,
  Citrine,
  YellowSapphire,
  Peridot,
  Emerald,
  Chrysolite,
  Zircon,
  Alexandrite,
  Aquamarine,
  Beryl,
  Opal,
  Topaz,
  Kyanite,
  BlueTourmaline,
  BlueSapphire,
  Rhodolite,
  Amethyst,
  PurpleSpinel,
  BlackTopaz,
  Onyx,
}

const GemToFileName = {
  Gem.Pearl: "gem_pearl.svg",
  Gem.Diamond: "gem_diamond.svg",
  Gem.Ruby: "gem_ruby.svg",
  Gem.Garnet: "gem_garnet.svg",
  Gem.RedTourmaline: "gem_red_tourmaline.svg",
  Gem.RedSpinel: "gem_red_spinel.svg",
  Gem.Carbuncle: "gem_carbuncle.svg",
  Gem.FireOpal: "gem_fire_opal.svg",
  Gem.Amber: "gem_amber.svg",
  Gem.OrangeSapphire: "gem_orange_sapphire.svg",
  Gem.OrangeTopaz: "gem_orange_topaz.svg",
  Gem.Citrine: "gem_citrine.svg",
  Gem.YellowSapphire: "gem_yellow_sapphire.svg",
  Gem.Peridot: "gem_peridot.svg",
  Gem.Emerald: "gem_emerald.svg",
  Gem.Chrysolite: "gem_chrysolite.svg",
  Gem.Zircon: "gem_zircon.svg",
  Gem.Alexandrite: "gem_alexandrite.svg",
  Gem.Aquamarine: "gem_aquamarine.svg",
  Gem.Beryl: "gem_beryl.svg",
  Gem.Opal: "gem_opal.svg",
  Gem.Topaz: "gem_topaz.svg",
  Gem.Kyanite: "gem_kyanite.svg",
  Gem.BlueTourmaline: "gem_blue_tourmaline.svg",
  Gem.BlueSapphire: "gem_blue_sapphire.svg",
  Gem.Rhodolite: "gem_rhodolite.svg",
  Gem.Amethyst: "gem_amethyst.svg",
  Gem.PurpleSpinel: "gem_purple_spinel.svg",
  Gem.BlackTopaz: "gem_black_topaz.svg",
  Gem.Onyx: "gem_onyx.svg",
};

const DigitToFileName = {
  1: "numerologic_one.svg",
  2: "numerologic_two.svg",
  3: "numerologic_three.svg",
  4: "numerologic_four.svg",
  5: "numerologic_five.svg",
  6: "numerologic_six.svg",
  7: "numerologic_seven.svg",
  8: "numerologic_eight.svg",
  9: "numerologic_nine.svg",
};

@immutable
class SymbolValues {
  final int digit;
  final Gem mineral;
  final List<String> colors;
  final TarrotMajor tarrot;
  final String name;

  const SymbolValues({
    @required this.digit,
    @required this.mineral,
    @required this.colors,
    @required this.tarrot,
    this.name = "",
  });
}

@immutable
class PreparedSymbolValues {
  final String digit;
  final String mineral;
  final List<String> colors;
  final String tarrot;

  PreparedSymbolValues(SymbolValues sv)
      : this.digit = DigitToFileName[sv.digit],
        this.mineral = GemToFileName[sv.mineral],
        this.colors = sv.colors,
        this.tarrot = TarrotMajorToFileName[sv.tarrot];
}

/// returns SymbolValues from prophecies object
SymbolValues getSymbolValues(Map<ProphecyType, ProphecyEntity> prophecy) {
  //

  final intrStr = prophecy[ProphecyType.INTERNAL_STRENGTH].value;
  final mood = prophecy[ProphecyType.MOODLET].value;
  final ambit = prophecy[ProphecyType.AMBITION].value;
  final intui = prophecy[ProphecyType.INTUITION].value;
  final luck = prophecy[ProphecyType.LUCK].value;

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 80.0 &&
      intui > 80.0 &&
      luck > 80.0)
    return SymbolValues(
      digit: 7,
      mineral: Gem.Alexandrite,
      colors: ["green", "grey", "bluegrey"],
      tarrot: TarrotMajor.TheWorld,
      name: "tree_of_wisdom",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 80.0 &&
      intui > 80.0 &&
      luck > 50.0)
    return SymbolValues(
      digit: 8,
      mineral: Gem.Amber,
      colors: ["orange", "brown", "yellow"],
      tarrot: TarrotMajor.Justice,
      name: "winged_wolf",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 80.0 && intui > 80.0)
    return SymbolValues(
      digit: 8,
      mineral: Gem.Carbuncle,
      colors: ["deepred", "teal", "red"],
      tarrot: TarrotMajor.Rebirth,
      name: "manticore",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 80.0 &&
      intui > 50.0 &&
      luck > 80.0)
    return SymbolValues(
      digit: 1,
      mineral: Gem.Ruby,
      colors: ["red", "yellow", "orange"],
      tarrot: TarrotMajor.Strength,
      name: "red_dragon",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 80.0 && luck > 80.0)
    return SymbolValues(
      digit: 4,
      mineral: Gem.BlueTourmaline,
      colors: ["white", "lightpink", "lightblue"],
      tarrot: TarrotMajor.TheLovers,
      name: "snowman",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 80.0 &&
      intui > 50.0 &&
      luck > 50.0)
    return SymbolValues(
      digit: 1,
      mineral: Gem.Onyx,
      colors: ["deeporange", "cyan", "black"],
      tarrot: TarrotMajor.TheWheelOfFortune,
      name: "magic_elk",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 80.0 && intui > 50.0)
    return SymbolValues(
      digit: 4,
      mineral: Gem.Emerald,
      colors: ["darkgreen", "yellow", "teal"],
      tarrot: TarrotMajor.TheHangedMan,
      name: "gremlin",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 80.0 && luck > 50.0)
    return SymbolValues(
      digit: 6,
      mineral: Gem.Amber,
      colors: ["brown", "teal", "grey"],
      tarrot: TarrotMajor.TheTower,
      name: "golem",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 80.0)
    return SymbolValues(
      digit: 3,
      mineral: Gem.Aquamarine,
      colors: ["deepblue", "grey", "blue"],
      tarrot: TarrotMajor.TheFool,
      name: "shark",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 50.0 &&
      intui > 80.0 &&
      luck > 80.0)
    return SymbolValues(
      digit: 3,
      mineral: Gem.OrangeSapphire,
      colors: ["brown", "lightyellow", "white"],
      tarrot: TarrotMajor.TheEmpress,
      name: "griffin",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 50.0 &&
      intui > 80.0 &&
      luck > 50.0)
    return SymbolValues(
      digit: 6,
      mineral: Gem.Kyanite,
      colors: ["grey", "bluegrey", "white"],
      tarrot: TarrotMajor.TheWorld,
      name: "elephant",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 50.0 && intui > 80.0)
    return SymbolValues(
      digit: 9,
      mineral: Gem.Citrine,
      colors: ["lightgreen", "yellow", "lightblue"],
      tarrot: TarrotMajor.TheMagician,
      name: "mage",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 50.0 &&
      intui > 50.0 &&
      luck > 80.0)
    return SymbolValues(
      digit: 8,
      mineral: Gem.Rhodolite,
      colors: ["deeppurple", "brown", "green"],
      tarrot: TarrotMajor.Strength,
      name: "bear",
    );

  if (intrStr > 80.0 &&
      mood > 80.0 &&
      ambit > 50.0 &&
      intui > 50.0 &&
      luck > 50.0)
    return SymbolValues(
      digit: 1,
      mineral: Gem.OrangeTopaz,
      colors: ["yellow", "orange", "deeporange"],
      tarrot: TarrotMajor.TheHierophant,
      name: "golden_bull",
    );

  if (intrStr > 80.0 && mood > 80.0 && ambit > 50.0 && intui > 50.0)
    return SymbolValues(
      digit: 4,
      mineral: Gem.Peridot,
      colors: ["teal", "lime", "green"],
      tarrot: TarrotMajor.Judgment,
      name: "pike_fish",
    );
}
