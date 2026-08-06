# class Continuation < Object

継続を表すクラスです。

[Kernel?.callcc](../method/Kernel/m/callcc.md) { |cont| ... } の呼び出しは、直前の状態(ローカル変数の定義、スタックフレーム)を cont に記憶してブロックを実行します。cont は、Continuation クラスのインスタンスで、[Continuation#call](../method/Continuation/i/call.md) メソッドを実行することでいつでも記憶した状態を継続できます。

C 言語の setjmp()/longjmp() がわかる人は

```text
setjmp() == callcc {|c| }
longjmp() == c.call
```

と考えれば、わかりやすいかも知れません(ただし、callcc はスタックが深くなる方向にもジャンプ出来るという違いがあります)

callcc() は、ブロックの戻り値を返しますが、Continuation#call(args)
が呼び出されたときは args を返します。

例:

```text
以下は、Continuationによる無限ループの例
  
def LOOP
  c = nil
  yield callcc {|cnt| c = cnt; true }
  c.call(false)
end
  
LOOP {|v| p v}
  
=> true
   false
   false
   false
     :
     :
```

callcc とは、call-with-current-continuation の略です。

## Instance Methods

- [\[\]](../method/Continuation/i/=5b=5d.md)
- [call](../method/Continuation/i/call.md)
