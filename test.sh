for benchmark in branch field gauss ldst solve test2 queen; do
  for history_bits in 0 1 2 3 4; do
    for btb_size in 1 2 4; do
      echo "benchmark = $benchmark, history bits = $history_bits, btbSize = $btb_size"
      ./diff.sh dynamic:$history_bits:$btb_size $benchmark
    done
  done
done