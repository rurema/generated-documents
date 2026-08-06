# Benchmark::Tms#format

### def format(fmtstr = nil, *args) -> String

self を指定されたフォーマットで整形して返します。

このメソッドは [Kernel?.format](../../../method/Kernel/m/format.md) のようにオブジェクトを整形しますが、以下の拡張を使用できます。

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

- **param** `fmtstr` -- フォーマット文字列です。
              省略された場合は、[Benchmark::Tms::FORMAT](../../../method/Benchmark=3a=3aTms/c/FORMAT.md) が使用されます。
- **param** `args` --  フォーマットされる引数です。
