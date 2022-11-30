import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

final list = List.generate(100000, (index) => index).toIList();

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
