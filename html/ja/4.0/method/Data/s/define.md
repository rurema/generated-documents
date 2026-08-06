# Data.define

### def Data.define(*args)       -> Class
### def Data.define(*args) {|subclass| block } -> Class

[Data](../../../class/Data.md) クラスに新しいサブクラスを作って、それを返します。

サブクラスでは値オブジェクトのメンバに対するアクセスメソッドが定義されています。

```ruby title="例"
Dog = Data.define(:name, :age)
fred = Dog.new("Fred", 5)
p fred.name # => "Fred"
p fred.age  # => 5
```

メンバの値を書き換えることはできません。

```ruby title="例"
Dog = Data.define(:name, :age)
fred = Dog.new("Fred", 5)
fred.age = 6 # ~> NoMethodError
```

メンバを持たないサブクラスも定義可能です。
以下のように、パターンマッチに利用できます。

```ruby title="例"
class HTTPFetcher
  Response = Data.define(:body)
  NotFound = Data.define

  def get(url)
    # ダミーの実装
    if url == "http://example.com/"
      Response.new(body: "Current time is #{Time.now}")
    else
      NotFound.new
    end
  end
end

def fetch(url)
  fetcher = HTTPFetcher.new
  case fetcher.get(url)
  in HTTPFetcher::Response(body)
    body
  in HTTPFetcher::NotFound
    :NotFound
  end
end

p fetch("http://example.com/")     # => "Current time is 2023-01-10 10:00:53 +0900"
p fetch("http://example.com/404")  # => :NotFound
```

- **param** `args` -- 値オブジェクトのクラスを定義するための可変長引数。[Symbol](../../../class/Symbol.md) または [String](../../../class/String.md) を指定します。

- **return** -- Data のサブクラスを返します。

- **raise** `TypeError` -- 引数に [Symbol](../../../class/Symbol.md), [String](../../../class/String.md) (String に暗黙の型変換が行われるオブジェクトを含む) 以外を指定した場合に発生します。

### ブロックを指定した場合

Data.define にブロックを指定した場合は定義した Data をコンテキストにブロックを評価します。
また、定義した Data はブロックパラメータにも渡されます。

```ruby title="例"
Customer = Data.define(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end
p Customer.new("Dave", "123 Main").greeting # => "Hello Dave!"
```

なお、Dataのサブクラスのインスタンスを生成する際にオプション引数を使用したいときは、
initialize メソッドをオーバーライドすることで実現できます。

```ruby title="例"
Point = Data.define(:x, :y) do
  def initialize(x:, y: 0)
    super
  end
end

p Point.new(x: 1)        # => #<data Point x=1, y=0>
p Point.new(x: 1, y: 2)  # => #<data Point x=1, y=2>
```
