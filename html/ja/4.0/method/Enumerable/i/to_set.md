# Enumerable#to_set

### def to_set(klass = Set, *args) -> Set
### def to_set(klass = Set, *args) {|o| ... } -> Set

Enumerable オブジェクトの要素から、新しい集合オブジェクトを作ります。

引数 klass を与えた場合、Set クラスの代わりに、指定した集合クラスのインスタンスを作ります。

この引数を指定することで、ユーザ定義の集合クラスのインスタンスを作ることができます
(ここでいう集合クラスとは、Setとメソッド/クラスメソッドで互換性のあるクラスです。
Ruby 2.7 以前は SortedSet が定義されていました)。

引数 args およびブロックは、集合オブジェクトを生成するための new
メソッドに渡されます。

Ruby 4.0 から、引数 klass や args を渡す呼び出しは deprecated です。
引数を渡すと「passing arguments to Enumerable#to_set is deprecated」という警告を出力します（ブロックのみを渡す呼び出しは deprecated ではありません）。

- **param** `klass` -- 生成する集合クラスを指定します。
- **param** `args` -- 集合クラスのオブジェクト初期化メソッドに渡す引数を指定します。
- **param** `block` -- 集合クラスのオブジェクト初期化メソッドに渡すブロックを指定します。
- **return** -- 生成された集合オブジェクトを返します。

```ruby
p [30, 10, 20].to_set
#=> Set[30, 10, 20]
MySet = Class.new(Set)
p [30, 10, 20].to_set(MySet)
# warning: passing arguments to Enumerable#to_set is deprecated
#=> #<MySet: {30, 10, 20}>
p [30, 10, 20].to_set {|num| num / 10}
#=> Set[3, 1, 2]
```

- **SEE** [Set.new](../../../method/Set/s/new.md)
