# Regexp#match?

### def match?(str, pos = 0) -> bool

指定された文字列 str に対して 位置 pos から自身が表す正規表現によるマッチングを行います。
マッチした場合 true を返し、マッチしない場合には false を返します。
また、[m:$~] など正規表現のマッチに関する組み込み変数の値は変更されません。

```ruby title="例"
p /R.../.match?("Ruby")  # => true
p /R.../.match?("Ruby", 1) # => false
p /P.../.match?("Ruby")  # => false
p $&                     # => nil
```

- **SEE** [Regexp#match](../../../method/Regexp/i/match.md)
