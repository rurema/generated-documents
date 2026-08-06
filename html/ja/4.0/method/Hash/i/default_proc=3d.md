# Hash#default_proc=

### def default_proc=(pr)

ハッシュのデフォルト値を返す [Proc](../../../class/Proc.md) オブジェクトを変更します。

以前のデフォルトは値([Hash#default](../../../method/Hash/i/default.md))の場合も
Proc の場合([Hash#default_proc](../../../method/Hash/i/default_proc.md))でも上書きされます。

引数には to_proc で [Proc](../../../class/Proc.md) オブジェクトに変換できるオブジェクトも受け付けます。

nil を指定した場合は現在の [Hash#default_proc](../../../method/Hash/i/default_proc.md) をクリアします。

- **param** `pr` -- デフォルト値を返す手続きオブジェクト

```ruby title="例"
h = {}
h.default_proc = proc do |hash, key|
  hash[key] = case
              when (key % 15).zero?
                "FizzBuzz"
              when (key % 5).zero?
                 "Buzz"
              when (key % 3).zero?
                 "Fizz"
              else
                 key
              end
end
p h[1]  # => 1
p h[2]  # => 2
p h[3]  # => "Fizz"
p h[5]  # => "Buzz"
p h[15] # => "FizzBuzz"

h.default_proc = nil
p h[16] # => nil
# default_proc が nil になったので `16=>16 が追加されていない`
p h     # => {1=>1, 2=>2, 3=>"Fizz", 5=>"Buzz", 15=>"FizzBuzz"}
```

- **SEE** [Hash#default_proc](../../../method/Hash/i/default_proc.md), [Hash#default](../../../method/Hash/i/default.md)
