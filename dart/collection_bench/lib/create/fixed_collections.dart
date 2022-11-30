import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';
import 'package:fixed_collections/fixed_collections.dart';

var source = List.generate(length, (index) => index);

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    final list = FixedList(source);
  }
}

void main() => TemplateBenchmark.main();
