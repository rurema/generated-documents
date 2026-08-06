# Random::Formatter#alphanumeric

### def alphanumeric(n = nil, chars: ALPHANUMERIC) -> String

ランダムな英数字を生成して返します。

[Random](../../../class/Random.md) のインスタンスメソッド、および [Random](../../../class/Random.md) と [SecureRandom](../../../class/SecureRandom.md) の特異メソッドとして使用できます。

- **param** `n` -- 生成される文字列のサイズを整数で指定します。
         nil を指定した場合 n として 16 が使われます。
- **param** `chars` -- 生成に使う文字の配列を指定します。
         省略した場合は A-Z, a-z, 0-9 が使われます。
- **return** -- A-Z, a-z, 0-9 からなる文字列が返されます。
         (chars を指定した場合は、chars に含まれる文字からなる文字列が返されます)

```ruby
require 'random/formatter'

prng = Random.new
p prng.alphanumeric(10) # => "S8baxMJnPl"
p Random.alphanumeric   # => "TmP9OsJHJLtaZYhP"

p prng.alphanumeric(10, chars: [*"!".."/"]) # => ",.,++%/''."
```

- **SEE** [SecureRandom.alphanumeric](../../../method/SecureRandom/s/alphanumeric.md)
