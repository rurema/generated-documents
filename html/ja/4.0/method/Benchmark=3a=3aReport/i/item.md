# Benchmark::Report#item

### def item(label = "", *fmt){ ... } -> Benchmark::Tms
### def report(label = "", *fmt){ ... } -> Benchmark::Tms

ラベルと与えられたブロックの実行時間を標準出力に出力します。

出力のフォーマットは [Benchmark::Tms#format](../../../method/Benchmark=3a=3aTms/i/format.md) が行います。

- **param** `label` -- ラベル
- **param** `fmt` --   結果に出力したいオブジェクト

- **SEE** [Benchmark::Tms#format](../../../method/Benchmark=3a=3aTms/i/format.md)
