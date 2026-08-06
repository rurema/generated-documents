# class Set < Object

集合を表すクラスです。要素の間に順序関係はありません。

集合とは重複のないオブジェクトの集まりです。
[Array](../class/Array.md) の持つ演算機能と [Hash](../class/Hash.md) の高速な検索機能を合わせ持ちます。

集合要素の等価性は
[Object#eql?](../method/Object/i/eql=3f.md) と [Object#hash](../method/Object/i/hash.md) を用いて判断されます。

したがって、集合の各要素には、これらのメソッドが適切に定義されている必要があります。

Set クラスでは、集合要素を取り出す際の順序は保証されません。

### 例

```ruby
set1 = Set.new ["foo", "bar", "baz", "foo"]

p set1                  # => Set["foo", "bar", "baz"]
p set1.include?("bar")  # => true

set1.add("heh")
set1.delete("foo")
p set1                  # => Set["bar", "baz", "heh"]
```

### Set のサブクラスを作る {#subclass}

Ruby 4.0 で Set は C で再実装され、一部のメソッドの振る舞いが変わりました。
Set を継承してサブクラスを作る場合、互換性を必要とするかどうかで継承元を選べます。

古い実装との互換性が必要な場合は、Set を直接継承します。
この場合は互換レイヤが自動的に組み込まれ、振る舞いが古い実装に近くなります。

```ruby
class MySet < Set; end
p MySet[[1, 2, 3]]      # => #<MySet: {[1, 2, 3]}>
```

互換性が不要な場合は、[Set::CoreSet](../class/Set=3a=3aCoreSet.md) を継承します。
互換レイヤを挟まないぶん効率的です。

```ruby
class MyCoreSet < Set::CoreSet; end
p MyCoreSet[[1, 2, 3]]  # => MyCoreSet[[1, 2, 3]]
```

## Class Methods

- [\[\]](../method/Set/s/=5b=5d.md)
- [new](../method/Set/s/new.md)

## Instance Methods

- [&](../method/Set/i/=26.md)
- [intersection](../method/Set/i/intersection.md)
- [+](../method/Set/i/=2b.md)
- [union](../method/Set/i/union.md)
- [|](../method/Set/i/=7c.md)
- [-](../method/Set/i/=2d.md)
- [difference](../method/Set/i/difference.md)
- [<](../method/Set/i/=3c.md)
- [<=](../method/Set/i/=3c=3d.md)
- [proper_subset?](../method/Set/i/proper_subset=3f.md)
- [subset?](../method/Set/i/subset=3f.md)
- [<<](../method/Set/i/=3c=3c.md)
- [add](../method/Set/i/add.md)
- [add?](../method/Set/i/add=3f.md)
- [==](../method/Set/i/=3d=3d.md)
- [===](../method/Set/i/=3d=3d=3d.md)
- [include?](../method/Set/i/include=3f.md)
- [member?](../method/Set/i/member=3f.md)
- [>](../method/Set/i/=3e.md)
- [>=](../method/Set/i/=3e=3d.md)
- [proper_superset?](../method/Set/i/proper_superset=3f.md)
- [superset?](../method/Set/i/superset=3f.md)
- [^](../method/Set/i/=5e.md)
- [classify](../method/Set/i/classify.md)
- [clear](../method/Set/i/clear.md)
- [clone](../method/Set/i/clone.md)
- [dup](../method/Set/i/dup.md)
- [collect!](../method/Set/i/collect=21.md)
- [map!](../method/Set/i/map=21.md)
- [compare_by_identity](../method/Set/i/compare_by_identity.md)
- [compare_by_identity?](../method/Set/i/compare_by_identity=3f.md)
- [delete](../method/Set/i/delete.md)
- [delete?](../method/Set/i/delete=3f.md)
- [delete_if](../method/Set/i/delete_if.md)
- [reject!](../method/Set/i/reject=21.md)
- [disjoint?](../method/Set/i/disjoint=3f.md)
- [divide](../method/Set/i/divide.md)
- [each](../method/Set/i/each.md)
- [empty?](../method/Set/i/empty=3f.md)
- [filter!](../method/Set/i/filter=21.md)
- [select!](../method/Set/i/select=21.md)
- [flatten](../method/Set/i/flatten.md)
- [flatten!](../method/Set/i/flatten=21.md)
- [inspect](../method/Set/i/inspect.md)
- [to_s](../method/Set/i/to_s.md)
- [intersect?](../method/Set/i/intersect=3f.md)
- [join](../method/Set/i/join.md)
- [keep_if](../method/Set/i/keep_if.md)
- [length](../method/Set/i/length.md)
- [size](../method/Set/i/size.md)
- [merge](../method/Set/i/merge.md)
- [replace](../method/Set/i/replace.md)
- [reset](../method/Set/i/reset.md)
- [subtract](../method/Set/i/subtract.md)
- [to_a](../method/Set/i/to_a.md)
