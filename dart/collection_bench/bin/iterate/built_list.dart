import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:built_collection/built_collection.dart';

final list = List.generate(100000, (index) => index).build();

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
