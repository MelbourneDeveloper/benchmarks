import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:kt_dart/kt.dart';

final list = List.generate(100000, (index) => index).toImmutableList();

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    final list2 = list.toList();
  }
}

void main() => TemplateBenchmark.main();
