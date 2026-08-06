# Signal?.signame

### module_function def signame(signo) -> String | nil

引数で指定されたシグナル番号をシグナル名に変換して返します。
対応するシグナル番号が存在しない場合は nil を返します。

```ruby
Signal.trap("INT") { |signo| puts Signal.signame(signo) }
p Process.kill("INT", 0)
# => INT
```

- **SEE** [Signal?.list](../../../method/Signal/m/list.md)
