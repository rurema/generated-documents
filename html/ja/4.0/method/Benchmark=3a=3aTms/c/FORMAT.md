# Benchmark::Tms::FORMAT

### const FORMAT -> String

[Benchmark?.benchmark](../../../method/Benchmark/m/benchmark.md) の第三引数のデフォルト値。

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

上記のフォーマット文字列を使用しています。
この定数の内容は以下の通りです。

```ruby
"%10.6u %10.6y %10.6t %10.6r\n"
```

- **SEE** [Benchmark?.benchmark](../../../method/Benchmark/m/benchmark.md), [Benchmark::FORMAT](../../../method/Benchmark/c/FORMAT.md)
