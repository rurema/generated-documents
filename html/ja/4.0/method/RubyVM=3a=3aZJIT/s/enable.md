# RubyVM::ZJIT.enable

### def RubyVM::ZJIT.enable -> bool

実行時に ZJIT を有効化します。

- **return** -- 有効化したときは `true` を返します。すでに ZJIT が有効な場合は `false` を返します。
  YJIT が有効になっている場合は "Only one JIT can be enabled at the same time." という警告を出力して `false` を返します。

```ruby
RubyVM::ZJIT.enable # => true
```

JIT の有効・無効はビルドオプションや実行環境に依存するため、実行結果は環境によって異なります。

- **SEE** [RubyVM::ZJIT.enabled?](../../../method/RubyVM=3a=3aZJIT/s/enabled=3f.md), [RubyVM::YJIT.enable](../../../method/RubyVM=3a=3aYJIT/s/enable.md)
