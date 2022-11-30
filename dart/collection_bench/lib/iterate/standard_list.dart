import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';

final list = List.generate(length, (index) => index);

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    for (var i in list) {}
  }
}

void main() => TemplateBenchmark.main();
