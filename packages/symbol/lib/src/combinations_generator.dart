import 'dart:async';
import 'dart:math';

import 'package:build/build.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

class CombinationsGenerator extends Generator {
  final _random = new Random();

  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    final o = <String>[];
    o.add("const SymbolCombinations = <PropheciesRange, SymbolCombination>{");

    var moods = _getClassFields(library, "PropheciesRange");
    var ranges = _getClassFields(library, "Range");
    var tarrots = _getClassFields(library, "TarrotMajor");
    var gems = _getClassFields(library, "Gem");

    // total number of combinations is number of ranges ^ number or moods
    // right now this gives us 3 ^ 5 = 243 combinations
    var combinationNum = pow(ranges.length, moods.length);

    // we need to iterate over all combinations of mood to ranges
    for (var combIndex = 0; combIndex < combinationNum; ++combIndex) {
      // essentially, every number represents a set of ranges if converted
      // from decimal to trinary base
      // eg 242 base3 = 22222 where every single [2] represents
      // an index of a range

      o.add("  PropheciesRange(");

      // iterate over moods and calculate index of a range for every mood
      for (var moodIndex = 0, start = combIndex;
          moodIndex < moods.length;
          ++moodIndex) {
        // this is a classical conversion of an integer to a arbitrary representation
        final ri = (start % ranges.length);
        start ~/= ranges.length;

        o.add("    ${moods[moodIndex].name}: Range.${ranges[ri].name},");
      }
      final gem = gems[_random.nextInt(gems.length)];
      final tarot = tarrots[_random.nextInt(tarrots.length)];
      o.add("  ): SymbolCombination(");
      o.add("    digit: ${_random.nextInt(4) + 1},");
      o.add("    mineral: Gem.${gem.name},");
      // TODO generate colors
      o.add("    colors: [\"red\", \"yellow\", \"orange\"],");
      o.add("    tarrot: TarrotMajor.${tarot.name},");
      o.add("  ),");
    }

    o.add("};");
    return o.join("\n");
  }

  static List<FieldElement> _getClassFields(
      LibraryReader library, String className) {
    return library.allElements
        .whereType<ClassElement>()
        .where((element) => element.name == className)
        .first
        .fields
        .where(
            (element) => !(element.name == "index" || element.name == "values"))
        .toList();
  }
}
