# class Ruby::Box < Module

クラスやモジュールをプロセス内で分離し、アプリケーションのコードやライブラリ、モンキーパッチを互いに隔離するための機能です。
Ruby 4.0 で導入されました。

`Ruby::Box` は [Module](../class/Module.md) のサブクラスで、その各インスタンスは 1 つの隔離された名前空間（ボックス）を表します。あるボックスの中で新しく定義したり変更したりしたクラス・モジュール・定数・グローバル変数は、そのボックスの外や他のボックスからは見えません。

`Ruby::Box` は実験的な機能です。既定では無効で、このとき [Ruby::Box.enabled?](../method/Ruby=3a=3aBox/s/enabled=3f.md) は
`false` を返し、[Ruby::Box.new](../method/Ruby=3a=3aBox/s/new.md) は [RuntimeError](../class/RuntimeError.md) を発生させます。
利用するには、ruby プロセスの起動時に環境変数 `RUBY_BOX` に `1` を設定します。
`1` 以外の値や未設定は無効を意味します。また、プロセスの起動後に設定しても有効にはなりません。

```console
$ RUBY_BOX=1 ruby script.rb
```

有効な状態で起動すると次の警告が出力されます。
`-W:no-experimental` オプションで抑止できます。
将来のバージョンで挙動が変更される可能性があります。

```
ruby: warning: Ruby::Box is experimental, and the behavior may change in the future!
```

ボックスは [Ruby::Box.new](../method/Ruby=3a=3aBox/s/new.md) で作成し、[Ruby::Box#require](../method/Ruby=3a=3aBox/i/require.md)（あるいは
[Ruby::Box#require_relative](../method/Ruby=3a=3aBox/i/require_relative.md) や [Ruby::Box#load](../method/Ruby=3a=3aBox/i/load.md)）でファイルをそのボックスに読み込みます。読み込んだファイルで定義されたクラス・モジュール・定数は、ボックスオブジェクト経由で参照できます。

```ruby
# foo.rb
X = 1
class Something
  def x = X
end
```

```ruby
# main.rb
box = Ruby::Box.new
box.require_relative("foo")

X = 2
p X                    # => 2
p box::X               # => 1
p box::Something.new.x # => 1
```

ボックスの中では組み込みクラスを開いて再定義できますが、その変更はボックスの外や他のボックスには影響しません。グローバル変数やトップレベルの定数・メソッドの変更も同様にボックスごとに隔離されます。

## Class Methods

- [current](../method/Ruby=3a=3aBox/s/current.md)
- [enabled?](../method/Ruby=3a=3aBox/s/enabled=3f.md)
- [new](../method/Ruby=3a=3aBox/s/new.md)

## Instance Methods

- [eval](../method/Ruby=3a=3aBox/i/eval.md)
- [inspect](../method/Ruby=3a=3aBox/i/inspect.md)
- [load](../method/Ruby=3a=3aBox/i/load.md)
- [load_path](../method/Ruby=3a=3aBox/i/load_path.md)
- [require](../method/Ruby=3a=3aBox/i/require.md)
- [require_relative](../method/Ruby=3a=3aBox/i/require_relative.md)
