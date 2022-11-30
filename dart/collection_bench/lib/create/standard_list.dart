import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';

var source = List.generate(length, (index) => index);

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    final list = source.toList();
  }
}

void main() => TemplateBenchmark.main();
