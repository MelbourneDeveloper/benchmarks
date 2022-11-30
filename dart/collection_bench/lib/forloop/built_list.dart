import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection_bench/constants.dart';

final list = List.generate(length, (index) => index).build();

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    for (var i = 0; i < list.length; i++) {}
  }
}

void main() => TemplateBenchmark.main();
