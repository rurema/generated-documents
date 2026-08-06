# RubyVM::YJIT.enabled?

### def RubyVM::YJIT.enabled? -> bool

YJIT が有効かどうかを返します。

```ruby
RubyVM::YJIT.enabled? # => false
```

JIT の有効・無効はコマンドラインオプションや環境変数など実行環境に依存するため、実行結果は環境によって異なります。

- **SEE** [RubyVM::YJIT.enable](../../../method/RubyVM=3a=3aYJIT/s/enable.md)
