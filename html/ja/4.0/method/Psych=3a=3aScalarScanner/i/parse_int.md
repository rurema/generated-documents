# Psych::ScalarScanner#parse_int

### def parse_int(string) -> Integer

文字列 string を整数に変換して返します。

string に含まれるカンマ(`,`)とアンダースコア(`_`)を取り除いてから [Kernel?.Integer](../../../method/Kernel/m/Integer.md) で変換します。

- **param** `string` -- 変換する文字列
- **raise** `ArgumentError` -- string を整数に変換できないときに発生します
