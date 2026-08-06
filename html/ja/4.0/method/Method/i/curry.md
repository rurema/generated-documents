# Method#curry

### def curry        -> Proc
### def curry(arity) -> Proc

self を元にカリー化した [Proc](../../../class/Proc.md) を返します。

カリー化した [Proc](../../../class/Proc.md) はいくつかの引数をとります。十分な数の引数が与えられると、元の [Proc](../../../class/Proc.md) に引数を渡し て実行し、結果を返します。引数の個数が足りないときは、部分適用したカリー化 [Proc](../../../class/Proc.md) を返します。

- **param** `arity` -- 引数の個数を指定します。可変長の引数を指定できるメソッドを
             カリー化する際には必ず指定する必要があります。

```ruby title="例"
def foo(a,b,c)
  [a, b, c]
end

proc  = self.method(:foo).curry
proc2 = proc.call(1, 2)          #=> #<Proc>
proc2.call(3)                    #=> [1,2,3]

def vararg(*args)
  args
end

proc = self.method(:vararg).curry(4)
proc2 = proc.call(:x)      #=> #<Proc>
proc3 = proc2.call(:y, :z) #=> #<Proc>
proc3.call(:a)             #=> [:x, :y, :z, :a]
```

- **SEE** [Proc#curry](../../../method/Proc/i/curry.md)
