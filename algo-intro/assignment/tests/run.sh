#!/bin/bash
set -euo pipefail

echo 'Compiling the generator...'
g++ generator.cpp -o gen -std=c++11

echo 'Compiling merge_sort...'
g++ ../merge.cpp -o merge -std=c++11

echo 'Compiling quick_sort...'
g++ ../quick.cpp -o quick -std=c++11

echo 'Compiling heap_sort...'
g++ ../heap.cpp -o heap -std=c++11

echo 'Finished compilation!'
echo ''

input_sizes=(
  100
  500
  1000
  5000
  10000
  50000
  100000
  200000
  500000
  1000000
)

for input_size in "${input_sizes[@]}"; do
  printf "Generating input for $input_size elements...\t"
  ./gen "$input_size" > "$input_size.in"
  printf "Saved at $input_size.in\n"
done

echo 'Finished generating input files!'
echo ''

# MERGE
echo 'Begin test merge_sort!'
echo '' > report_merge.txt

for input_size in "${input_sizes[@]}"; do
  echo "Running merge_sort for $input_size elements"
  cp $input_size.in input.txt
  echo "" >> report_merge.txt
  echo "$input_size elements:" >> report_merge.txt
  { time ./merge >/dev/null; } 2>&1 | grep real >> report_merge.txt
done

echo 'Finished test merge_sort!'
echo ''

# HEAP
echo 'Begin test heap_sort!'
echo '' > report_heap.txt

for input_size in "${input_sizes[@]}"; do
  echo "Running heap_sort for $input_size elements"
  cp $input_size.in input.txt
  echo "" >> report_heap.txt
  echo "$input_size elements:" >> report_heap.txt
  { time ./merge >/dev/null; } 2>&1 | grep real >> report_heap.txt
done

echo 'Finished test heap_sort!'
echo ''

# QUICK
echo 'Begin test quick_sort!'
echo '' > report_quick.txt

for input_size in "${input_sizes[@]}"; do
  echo "Running quick_sort for $input_size elements"
  cp $input_size.in input.txt
  echo "" >> report_quick.txt
  echo "$input_size elements:" >> report_quick.txt
  { time ./merge >/dev/null; } 2>&1 | grep real >> report_quick.txt
done

echo 'Finished test quick_sort!'
echo ''

echo 'Done!'
