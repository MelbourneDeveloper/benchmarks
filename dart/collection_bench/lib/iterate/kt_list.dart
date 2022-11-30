import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:kt_dart/kt.dart';
import 'package:collection_bench/constants.dart';

final list = List.generate(length, (index) => index).toImmutableList();

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    for (var i in list.iter) {}
  }
}

void main() => TemplateBenchmark.main();
