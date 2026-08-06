# Enumerable#grep

### def grep(pattern)                -> [object]
### def grep(pattern) {|item| ... }  -> [object]

pattern === item が成立する要素を全て含んだ配列を返します。

ブロックとともに呼び出された時には条件の成立した要素に対してそれぞれブロックを評価し、その結果の配列を返します。
マッチする要素がひとつもなかった場合は空の配列を返します。

- **param** `pattern` -- 「===」メソッドを持つオブジェクトを指定します。

```ruby title="例"
p ['aa', 'bb', 'cc', 'dd', 'ee'].grep(/[bc]/)  # => ["bb", "cc"]

  p Array.instance_methods.grep(/gr/) # => [:grep, :grep_v, :group_by]
```

- **SEE** [Enumerable#select](../../../method/Enumerable/i/select.md)
- **SEE** [Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md)
