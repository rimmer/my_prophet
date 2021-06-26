library symbol.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:symbol/src/combinations_generator.dart';

Builder combinationsBuilder(BuilderOptions options) =>
    SharedPartBuilder([CombinationsGenerator()], 'combinations');