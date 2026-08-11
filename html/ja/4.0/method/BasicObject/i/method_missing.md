# BasicObject#method_missing

### def method_missing(name, *args) -> object

呼びだされたメソッドが定義されていなかった時、Rubyインタプリタがこのメソッドを呼び出します。

呼び出しに失敗したメソッドの名前 ([Symbol](../../../class/Symbol.md)) が name にその時の引数が第二引数以降に渡されます。

デフォルトではこのメソッドは例外 [NoMethodError](../../../class/NoMethodError.md) を発生させます。


- **param** `name` -- 未定義メソッドの名前（シンボル）です。
- **param** `args` -- 未定義メソッドに渡された引数です。
- **return** -- ユーザー定義の method_missing メソッドの返り値が未定義メソッドの返り値で
  あるかのように見えます。

```ruby title="例"
class Foo
  def initialize(data)
    @data = data
  end
  def method_missing(name, lang)
    if name.to_s =~ /\Afind_(\d+)_in\z/
      if @data[lang]
        p @data[lang][$1.to_i]
      else
        raise "#{lang} unknown"
      end
    else
      super
    end
  end
end

dic = Foo.new({:English => %w(zero one two), :Esperanto => %w(nulo unu du)})
p dic.find_2_in :Esperanto # => "du"
```

[注意] このメソッドを override する場合は対象のメソッド名に対して
[Object#respond_to?](../../../method/Object/i/respond_to=3f.md) が真を返すようにしてください。
そのためには、[Object#respond_to_missing?](../../../method/Object/i/respond_to_missing=3f.md) も同様に override する必要があります。

- **SEE** [Object#respond_to?](../../../method/Object/i/respond_to=3f.md), [Object#respond_to_missing?](../../../method/Object/i/respond_to_missing=3f.md)
