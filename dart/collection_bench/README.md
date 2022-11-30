
# Immutable Collection Benchmarks
These benchmarks attempt to compare the performance of various immutable lists in Dart. The reasoning for these benchmarks is that you will mostly be doing one of four things: creating a list from an iterable, iterating with `for in`, iterating in a `for` loop, or converting to a list. Notably, the fixed_collections list doesn't have a benchmark to convert to a `List<>` because it is already a `List<>`. There is no conversion necessary. All the lists are integer lists with 100,000 elements. Time is in microseconds (μs).

All benchmarks here are in release mode on a Ubuntu - Intel(R) Core(TM) i7-3632QM CPU @ 2.20GHz computer.

Disclaimer: I don't know what I'm doing and I'm probably wrong. Please let me know if you see any errors.

## Libraries

* [built_collection](https://pub.dartlang.org/packages/built_collection)
* [fixed_collections](https://pub.dartlang.org/packages/fixed_collections)
* [fast_immutable_collections](https://pub.dartlang.org/packages/fast_immutable_collections)
* [kt_dart](https://pub.dev/packages/kt_dart)

## Convert To `List<int>`


| Library  | Time  |  
|---|---|
| built_collections  | 0.020520742397396288  |  
|  fast_immutable | 11281.607329842933  |  
|  kt_list | 13537.645  |  
 

## Create From `List<int>`

| Library  | Time  |  
|---|---| 
| Standard List | 10460.031358885017 |
|  fast_immutable_collections | 12949.63125  |  
|  kt_list | 13375.7375  |  
|  built_list | 13146.475  |  
|  fixed_collections | 13620.61038961039  |  


## `for` loop

| Library  | Time  |  
|---|---| 
|  built_list | 1380.4033333333334 |  
|  fixed_collections | 1501.1477777777777 | 
|  kt_list | 1928.2526236881558 |  
|  fast_immutable_collections | 2163.84 |  
| Standard List | 2210.982 |

## `for in` loop

| Library  | Time  |  
|---|---| 
| Standard List | 2124.9975 |
|  built_list | 2286.165 | 
|  fixed_collections | 2347.972 | 
|  kt_list | 2353.311 |  
|  fast_immutable_collections | 2788.1675 | 


### Versions

  _fe_analyzer_shared 50.0.0
  analyzer 5.2.0
  args 2.3.1
  async 2.10.0
  benchmark_harness 2.2.0
  boolean_selector 2.1.1
  built_collection 5.1.1
  collection 1.17.0
  convert 3.1.1
  coverage 1.6.1
  crypto 3.0.2
  fast_immutable_collections 8.1.0
  file 6.1.4
  fixed_collections 0.5.0-beta
  frontend_server_client 3.2.0
  glob 2.1.1
  http_multi_server 3.2.1
  http_parser 4.0.2
  io 1.0.3
  js 0.6.5
  kt_dart 1.0.0
  lints 2.0.1
  logging 1.1.0
  matcher 0.12.13
  meta 1.8.0
  mime 1.0.3
  node_preamble 2.0.1
  package_config 2.1.0
  path 1.8.2
  pool 1.5.1
  pub_semver 2.1.3
  shelf 1.4.0
  shelf_packages_handler 3.0.1
  shelf_static 1.1.1
  shelf_web_socket 1.0.3
  source_map_stack_trace 2.1.1
  source_maps 0.10.11
  source_span 1.9.1
  stack_trace 1.11.0
  stream_channel 2.1.1
  string_scanner 1.2.0
  term_glyph 1.2.1
  test 1.22.0
  test_api 0.4.16
  test_core 0.4.20
  typed_data 1.3.1
  vm_service 9.4.0
  watcher 1.0.2
  web_socket_channel 2.2.0
  webkit_inspection_protocol 1.2.0
  yaml 3.1.1