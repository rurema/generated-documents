# Proc#call

### def [](*arg) -> ()
### def call(*arg) -> ()
### def ===(*arg) -> ()
{: since=""}
### def yield(*arg) -> ()

手続きオブジェクトを実行してその結果を返します。

引数の渡され方はオブジェクトの生成方法によって異なります。
詳しくは [Proc#lambda?](../../../method/Proc/i/lambda=3f.md) を参照してください。

「===」は when の所に手続きを渡せるようにするためのものです。

```ruby title="例"
def sign(n)
  case n
  when lambda{|n| n > 0} then 1
  when lambda{|n| n < 0} then -1
  else 0
  end
end

p sign(-4) # => -1
p sign(0)  # => 0
p sign(7)  # => 1
```

また、以下のような syntactic sugar もあります。

```ruby title="例"
fib = lambda{|n|
  case n
  when 0 then 0
  when 1 then 1
  else
    fib.(n - 2) + fib.(n - 1)
  end
}
p fib.(10) # => 55
```

- **param** `arg` -- 手続きオブジェクトに与える引数を指定します。

- **raise** `LocalJumpError` -- Procを生成したメソッドからリターンしてしまった場合に発生します。
