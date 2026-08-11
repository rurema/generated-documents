# Object#initialize_copy

### def initialize_copy(obj) -> object

(拡張ライブラリによる) ユーザ定義クラスのオブジェクトコピーの初期化メソッド。

このメソッドは self を obj の内容で置き換えます。
ただし、self のインスタンス変数や特異メソッドは変化しません。

デフォルトでは、[Object#clone](../../../method/Object/i/clone.md) の内部で [Object#initialize_clone](../../../method/Object/i/initialize_clone.md) から、また [Object#dup](../../../method/Object/i/dup.md) の内部で [Object#initialize_dup](../../../method/Object/i/initialize_dup.md) から呼ばれます。

initialize_copy は、Ruby インタプリタが知り得ない情報をコピーするために使用(定義)されます。例えば C 言語でクラスを実装する場合、情報をインスタンス変数に保持させない場合がありますが、そういった内部情報を initialize_copy でコピーするよう定義しておくことで、dup や clone
を再定義する必要がなくなります。

デフォルトの Object#initialize_copy の実装は、 self が freeze されていないことと、 self と obj のクラスが一致していることをチェックして self を返します。

initialize_copy という名前のメソッドは自動的に private に設定されます。

- **raise** `TypeError` -- レシーバが freeze されているか、obj のクラスがレシーバのクラスと異なる場合に発生します。
- **SEE** [Object#clone](../../../method/Object/i/clone.md),[Object#dup](../../../method/Object/i/dup.md)

dup や clone は以下の手順でオブジェクトを複製します。

obj.dup は、 obj.class のアロケータを呼び出して新しいオブジェクトを生成します。
新たに生成したオブジェクトに対して
obj のインスタンス変数、ファイナライザを
コピーします。
obj.clone は、さらに特異メソッドもコピーします。

その後、新しいオブジェクトに対して initialize_dup 経由で initialize_copy を呼びます。
obj.clone は initialize_clone 経由で initialize_copy を呼びます。

最後に obj.clone は、 obj が freeze されているか、引数に freeze: true を指定した場合、新しいオブジェクトを freeze します。

```ruby title="例: ユーザ定義クラスに追加のコピー処理を定義する"
class MyClass
  attr_reader :data
  def initialize(data)
    @data = data
  end

  # 通常dupはインスタンス変数をそのまま引き継ぐが、
  # initialize_copyを定義することでインスタンス変数の指すオブジェクトもコピーできる
  def initialize_copy(source)
    super
    @data = data.dup
  end
end

a = MyClass.new([1])
b = a.dup
a.data << 2

p a.data  # => [1, 2]
p b.data  # => [1]
```

```ruby
obj = Object.new
class <<obj
  attr_accessor :foo
  def bar
    :bar
  end
end

def check(obj)
  puts "instance variables: #{obj.inspect}"
  print "singleton methods: "
  begin
    p obj.bar
  rescue NameError
    p $!
  end
end

obj.foo = 1

check Object.new.send(:initialize_copy, obj)
        #=> instance variables: #<Object:0x4019c9d4>
        #   singleton methods: #<NoMethodError: ...>
check obj.dup
        #=> instance variables: #<Object:0x4019c9c0 @foo=1>
        #   singleton methods: #<NoMethodError: ...>
check obj.clone
        #=> instance variables: #<Object:0x4019c880 @foo=1>
        #   singleton methods: :bar
```

- **SEE** [Object#initialize_clone](../../../method/Object/i/initialize_clone.md), [Object#initialize_dup](../../../method/Object/i/initialize_dup.md)
