import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:built_collection/built_collection.dart';

var source = List.generate(100000, (index) => index);

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    final list = source.build();
  }
}

void main() => TemplateBenchmark.main();
