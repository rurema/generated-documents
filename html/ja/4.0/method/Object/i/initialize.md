# Object#initialize

### def initialize(*args, &block) -> object

ユーザ定義クラスのオブジェクト初期化メソッド。

このメソッドは [Class#new](../../../method/Class/i/new.md) から新しく生成されたオブジェクトの初期化のために呼び出されます。他の言語のコンストラクタに相当します。
デフォルトの動作ではなにもしません。

initialize には
[Class#new](../../../method/Class/i/new.md) に与えられた引数がそのまま渡されます。

サブクラスではこのメソッドを必要に応じて再定義されることが期待されています。

initialize という名前のメソッドは自動的に private に設定されます。

- **param** `args` -- 初期化時の引数です。
- **param** `block` -- 初期化時のブロック引数です。必須ではありません。

```ruby
class Foo
  def initialize name
    puts "initialize Foo"
    @name = name
  end
end

class Bar < Foo
  def initialize name, pass
    puts "initialize Bar"
    super name
    @pass = pass
  end
end

it = Bar.new('myname','0500')
p it
# => initialize Bar
#   initialize Foo
#   #<Bar:0x2b68f08 @name="myname", @pass="0500">
```

- **SEE** [Class#new](../../../method/Class/i/new.md)
