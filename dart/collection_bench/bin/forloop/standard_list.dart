import 'package:benchmark_harness/benchmark_harness.dart';

final list = List.generate(100000, (index) => index);

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
