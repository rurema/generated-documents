# Process::GID?.eid

### module_function def eid    -> Integer

現在のプロセスの実効グループ ID を返します。

利用できるかはプラットフォームに依存します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

```ruby
p Process.egid # => 500
```
