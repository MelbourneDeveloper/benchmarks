import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection_bench/constants.dart';

final list = List.generate(length, (index) => index).build();

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
