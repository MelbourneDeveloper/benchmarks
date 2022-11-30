import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection_bench/constants.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

final list = List.generate(length, (index) => index).toIList();

class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super('Template');

  static void main() {
    const TemplateBenchmark().report();
  }

  @override
  void run() {
    for (var i = 0; i < list.length; i++) {}
  }
}

void main() => TemplateBenchmark.main();
