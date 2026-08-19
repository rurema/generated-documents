# class OpenStruct < Object

要素を動的に追加・削除できる手軽な構造体を提供するクラスです。

OpenStruct のインスタンスに対して未定義なメソッド x= を呼ぶと、
OpenStruct クラスの [BasicObject#method_missing](../method/BasicObject/i/method_missing.md) で捕捉され、そのインスタンスにインスタンスメソッド x, x= が定義されます。
この挙動によって要素を動的に変更できる構造体として働きます。

```ruby
require 'ostruct'
ab = OpenStruct.new
ab.foo = 25
p ab.foo          # => 25
ab.bar = 2
p ab.bar          # => 2
p ab              # => <OpenStruct foo=25, bar=2>
ab.delete_field("foo")
p ab.foo          # => nil
p ab              # => <OpenStruct bar=2>
```

初期化にハッシュを使用することもできます。

```ruby
require 'ostruct'
son = OpenStruct.new({ :name => "Thomas", :age => 3 })
p son.name        # => "Thomas"
p son.age         # => 3
son.age += 1
p son.age         # => 4
son.items = ["candy","toy"]
p son.items       # => ["candy","toy"]
p son             # => #<OpenStruct name="Thomas", age=4, items=["candy", "toy"]>
```

### 注意事項 {#caveats}

OpenStruct は Ruby のメソッド探索を利用して、プロパティに必要なメソッドを見つけて定義します。これは [BasicObject#method_missing](../method/BasicObject/i/method_missing.md) と [Object#define_singleton_method](../method/Object/i/define_singleton_method.md) によって実現されます。

作成されるオブジェクトのパフォーマンスに懸念がある場合は、この点を考慮する必要があります。[Hash](../class/Hash.md) や [Struct](../class/Struct.md) を使用する場合と比較して、これらのプロパティの設定にははるかに多くのオーバーヘッドがあるためです。小規模な [Hash](../class/Hash.md) から [OpenStruct](../class/OpenStruct.md) を作成し、いくつかの要素にアクセスした場合、直接ハッシュテーブルにアクセスするよりも 200 倍遅くなることがあります。

これは潜在的なセキュリティ問題です。信頼されていないユーザーデータ（例：JSON を用いたリクエスト）から [OpenStruct](../class/OpenStruct.md) を構築した場合、キーがメソッドを作成し、そのメソッド名が永久に GC されることがないため、DoS 攻撃を受ける可能性があります。

これは、Ruby バージョン間の非互換性の原因にもなります：

```ruby
require 'ostruct'
o = OpenStruct.new
p o.then          # => Ruby < 2.6 では nil、Ruby >= 2.6 では Enumerator
```

以下の方法では、組み込みライブラリのメソッドが上書きされる可能性があり、バグやセキュリティ上の問題が発生する可能性があります：

```ruby
require 'ostruct'
o = OpenStruct.new
p o.methods       # => [:to_h, :marshal_dump, :each_pair, ...] (内容と順序は Ruby のバージョンによって異なります)
o.methods = [:foo, :bar]
p o.methods       # => [:foo, :bar]
```

衝突を避けるために [OpenStruct](../class/OpenStruct.md) は ! で終わるメソッドは protected と private でのみ使用し、public な組み込みライブラリの ! で終わるメソッドはエイリアスを定義しています：

```ruby
require 'ostruct'
o = OpenStruct.new(make: 'Bentley', class: :luxury)
p o.class         # => :luxury
p o.class!        # => OpenStruct
```

! で終わるフィールドは使用しないことが推奨されます（ただし、強制ではありません）。サブクラスのメソッドを上書きすることはできませんし、! で終わる OpenStruct 自身のメソッドを上書きすることもできません。

以上の理由から OpenStruct を一切使用しないことを検討してください。

## Class Methods

- [json_create](../method/OpenStruct/s/json_create.md)
- [new](../method/OpenStruct/s/new.md)

## Instance Methods

- [==](../method/OpenStruct/i/=3d=3d.md)
- [\[\]](../method/OpenStruct/i/=5b=5d.md)
- [\[\]=](../method/OpenStruct/i/=5b=5d=3d.md)
- [delete_field](../method/OpenStruct/i/delete_field.md)
- [dig](../method/OpenStruct/i/dig.md)
- [each_pair](../method/OpenStruct/i/each_pair.md)
- [eql?](../method/OpenStruct/i/eql=3f.md)
- [hash](../method/OpenStruct/i/hash.md)
- [inspect](../method/OpenStruct/i/inspect.md)
- [to_s](../method/OpenStruct/i/to_s.md)
- [to_h](../method/OpenStruct/i/to_h.md)
- [to_json](../method/OpenStruct/i/to_json.md)

## Protected Instance Methods

- [modifiable](../method/OpenStruct/i/modifiable.md)
- [new_ostruct_member](../method/OpenStruct/i/new_ostruct_member.md)
