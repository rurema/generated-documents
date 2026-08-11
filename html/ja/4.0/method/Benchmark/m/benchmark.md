# Benchmark?.benchmark

### module_function def benchmark(caption = "", label_width = nil, fmtstr = nil, *labels){|rep| ...} -> [Benchmark::Tms]

[Benchmark::Report](../../../class/Benchmark=3a=3aReport.md) オブジェクトを生成し、それを引数として与えられたブロックを実行します。

基本的には以下のように使います。
ブロックが [Benchmark::Tms](../../../class/Benchmark=3a=3aTms.md) オブジェクトの配列を返した場合は、それらの数値も追加の行に表示されます。

- **param** `caption` --     レポートの一行目に表示する文字列を指定します。
- **param** `label_width` -- ラベルの幅を指定します。
- **param** `fmtstr` --      フォーマット文字列を指定します。
                   この引数を省略すると [Benchmark::FORMAT](../../../method/Benchmark/c/FORMAT.md) が使用されます。
- **param** `labels` --  ブロックが [Benchmark::Tms](../../../class/Benchmark=3a=3aTms.md) オブジェクトの配列を返す場合に指定します。

### フォーマット文字列

フォーマット文字列として以下が使用できます。

- **`%u`**:
  user CPU time で置き換えられます。[Benchmark::Tms#utime](../../../method/Benchmark=3a=3aTms/i/utime.md)
- **`%y`**:
  system CPU time で置き換えられます(Mnemonic: y of "s*y*stem")。[Benchmark::Tms#stime](../../../method/Benchmark=3a=3aTms/i/stime.md)
- **`%U`**:
  子プロセスの user CPU time で置き換えられます。[Benchmark::Tms#cutime](../../../method/Benchmark=3a=3aTms/i/cutime.md)
- **`%Y`**:
  子プロセスの system CPU time で置き換えられます。[Benchmark::Tms#cstime](../../../method/Benchmark=3a=3aTms/i/cstime.md)
- **`%t`**:
  total CPU time で置き換えられます。[Benchmark::Tms#total](../../../method/Benchmark=3a=3aTms/i/total.md)
- **`%r`**:
  実経過時間で置き換えられます。[Benchmark::Tms#real](../../../method/Benchmark=3a=3aTms/i/real.md)
- **`%n`**:
  ラベルで置き換えられます(Mnemonic: n of "*n*ame")。[Benchmark::Tms#label](../../../method/Benchmark=3a=3aTms/i/label.md)

  ```ruby
  require 'benchmark'

  n = 50000

  # これは
  #    Benchmark.bm(7, ">total:", ">avg:") do |x| ... end
  # と同じ
  Benchmark.benchmark(" "*7 + Benchmark::CAPTION,
                      7,
                      Benchmark::FORMAT,
                      ">total:",
                      ">avg:") do |x|

    tf = x.report("for:")   { for i in 1..n; a = "1"; end }
    tt = x.report("times:") { n.times do   ; a = "1"; end }
    tu = x.report("upto:")  { 1.upto(n) do ; a = "1"; end }

    [tf+tt+tu, (tf+tt+tu)/3]
  end

  # =>
  #
  #              user     system      total        real
  # for:     1.016667   0.016667   1.033333 (  0.485749)
  # times:   1.450000   0.016667   1.466667 (  0.681367)
  # upto:    1.533333   0.000000   1.533333 (  0.722166)
  # >total:  4.000000   0.033333   4.033333 (  1.889282)
  # >avg:    1.333333   0.011111   1.344444 (  0.629761)
  ```
