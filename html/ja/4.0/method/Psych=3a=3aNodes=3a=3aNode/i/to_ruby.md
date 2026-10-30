# Psych::Nodes::Node#to_ruby

### def to_ruby(symbolize_names: false, freeze: false, strict_integer: false, parse_symbols: true) -> object
### def transform(symbolize_names: false, freeze: false, strict_integer: false, parse_symbols: true) -> object

AST を ruby のオブジェクトに変換します。

- **param** `symbolize_names` -- ハッシュ(YAMLの仕様では正確にはマッピング)のキーを [Symbol](../../../class/Symbol.md) に変換するかどうかを指定します。
                       true を指定した場合は変換します。デフォルトでは文字列に変換されます。
- **param** `freeze` -- true を指定すると再帰的に [Object#freeze](../../../method/Object/i/freeze.md) されたオブジェクトを返します。
              デフォルトは false です。
- **param** `strict_integer` -- true を指定すると、"1,000" のようなカンマを含む数値を [Integer](../../../class/Integer.md) に変換せず、文字列として返します。デフォルトは false です。
- **param** `parse_symbols` -- false を指定すると、":foo" のような文字列を [Symbol](../../../class/Symbol.md) に変換せず、文字列として返します。デフォルトは true です。
