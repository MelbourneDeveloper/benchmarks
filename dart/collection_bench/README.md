
# Immutable Collection Benchmarks
These benchmarks attempt to compare the performance of various immutable lists in Dart. The reasoning for these benchmarks is that you will mostly be doing one of four things: creating a list from an iterable, iterating with `for in`, iterating in a `for` loop, or converting to a list. Notably, the fixed_collections list doesn't have a benchmark to convert to a `List<>` because it is already a `List<>`. There is no conversion necessary. All the lists are integer lists with 100,000 elements.

All benchmarks here are in release mode on a Ubuntu - Intel(R) Core(TM) i7-3632QM CPU @ 2.20GHz computer.

Disclaimer: I don't know what I'm doing and I'm probably wrong. Please let me know if you see any errors.

## Convert To `List<int>`


| Library  | Time  |  
|---|---|
| built_collections  | 0.020520742397396288  |  
|  fast_immutable | 11281.607329842933  |  
|  kt_list | 13537.645  |  
 

## Create From `List<int>`

| Library  | Time  |  
|---|---| 
|  fast_immutable_collections | 12949.63125  |  
|  kt_list | 13110.342995169081  |  
|  built_list | 13110.342995169081  |  
|  fixed_collections | 13620.61038961039  |  
| Standard List | 10460.031358885017 |

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