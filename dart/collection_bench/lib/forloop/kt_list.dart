import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';
import 'package:kt_dart/kt.dart';

final list = List.generate(length, (index) => index).toImmutableList();

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    for (var i = 0; i < list.size; i++) {}
  }
}

void main() => TemplateBenchmark.main();
