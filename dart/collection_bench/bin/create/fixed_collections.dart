import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fixed_collections/fixed_collections.dart';

var source = List.generate(100000, (index) => index);

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
