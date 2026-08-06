# Binding#receiver

### def receiver -> object

保持するコンテキスト内での self を返します。

このメソッドは以下のコードと同様の動作をします。

```ruby
binding.eval("self")
```
