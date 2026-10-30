# Psych::ScalarScanner.new

### def Psych::ScalarScanner.new(class_loader, strict_integer: false, parse_symbols: true) -> Psych::ScalarScanner

新たな ScalarScanner オブジェクトを生成します。

- **param** `class_loader` -- YAML のタグから Ruby のクラスを解決するための Psych::ClassLoader オブジェクト
- **param** `strict_integer` -- true を指定すると、[Psych::ScalarScanner#tokenize](../../../method/Psych=3a=3aScalarScanner/i/tokenize.md) は "1,000" のようなカンマを含む数値を [Integer](../../../class/Integer.md) に変換せず、文字列として返します。デフォルトは false です。
- **param** `parse_symbols` -- false を指定すると、[Psych::ScalarScanner#tokenize](../../../method/Psych=3a=3aScalarScanner/i/tokenize.md) は ":foo" のような文字列を [Symbol](../../../class/Symbol.md) に変換せず、文字列として返します。デフォルトは true です。
