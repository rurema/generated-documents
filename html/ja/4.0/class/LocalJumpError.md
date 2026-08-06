# class LocalJumpError < StandardError

ブロックを伴わずに呼び出されたメソッドの中で yield を実行すると発生します。

```ruby
def call_block
  yield 42
end
call_block  # => no block given (yield) (LocalJumpError)
```

また、[Proc](../class/Proc.md) オブジェクト内で return や break を実行しようとしたとき、その飛び先となるはずのメソッド呼び出しがすでに終了している(またはそもそも存在しない)場合にも発生します。例えば、[Proc](../class/Proc.md) オブジェクトを生成したメソッド呼び出しが終了した後に、その [Proc](../class/Proc.md) オブジェクトに対して return を実行しようとした場合などです。

詳しくは [spec/lambda_proc#orphan](../doc/spec=2flambda_proc.md#orphan) を参照してください。

## Instance Methods

- [exit_value](../method/LocalJumpError/i/exit_value.md)
- [reason](../method/LocalJumpError/i/reason.md)
