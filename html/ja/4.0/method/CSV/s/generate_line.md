# CSV.generate_line

### def CSV.generate_line(row, options = Hash.new) -> String

このメソッドは一つの [Array](../../../class/Array.md) オブジェクトを CSV 文字列に変換するためのショートカットです。
複数行のCSVを扱う際は[CSV#<<](../../../method/CSV/i/=3c=3c.md)を使うとより高速です。

このメソッドは可能であれば row に含まれる最初の nil でない値を用いて出力のエンコーディングを推測します。

- **param** `row` -- 文字列の配列を指定します。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。
               :encoding というキーを使用すると出力のエンコーディングを指定できます。
               :row_sep というキーの値には [m:$/] がセットされます。

```ruby title="例"
require "csv"

taro = ['1', 'taro', 'tanaka', '20']
p CSV.generate_line(taro, col_sep: '|') # => "1|taro|tanaka|20\n"
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
