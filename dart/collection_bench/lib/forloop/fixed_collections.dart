import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';
import 'package:fixed_collections/fixed_collections.dart';

final list = FixedList(List.generate(length, (index) => index));

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
