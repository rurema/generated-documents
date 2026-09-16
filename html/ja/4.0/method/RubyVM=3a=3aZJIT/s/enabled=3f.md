# RubyVM::ZJIT.enabled?

### def RubyVM::ZJIT.enabled? -> bool

ZJIT が有効かどうかを返します。

```ruby
RubyVM::ZJIT.enabled? # => false
```

JIT の有効・無効はコマンドラインオプションなど実行環境に依存するため、実行結果は環境によって異なります。

- **SEE** [RubyVM::ZJIT.enable](../../../method/RubyVM=3a=3aZJIT/s/enable.md)
