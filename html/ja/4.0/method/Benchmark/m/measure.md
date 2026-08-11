# Benchmark?.measure

### module_function def measure(label = "") { ... }  -> Benchmark::Tms

与えられたブロックを実行して、経過した時間を [Process?.times](../../../method/Process/m/times.md) で計り、
[Benchmark::Tms](../../../class/Benchmark=3a=3aTms.md) オブジェクトを生成して返します。

Benchmark::Tms オブジェクトには to_s が定義されているので、基本的には以下のように使います。

```ruby
require 'benchmark'

puts Benchmark::CAPTION
puts Benchmark.measure { "a"*1_000_000 }

# =>
#
#     user     system      total        real
# 1.166667   0.050000   1.216667 (  0.571355)
```
