# ENV.except

### def ENV.except(*keys) -> Hash

引数で指定された以外のキーとその値だけを含む Hash を返します。

```ruby
p ENV                     # => {"LANG"=>"en_US.UTF-8", "TERM"=>"xterm-256color", "HOME"=>"/Users/rhc"}
p ENV.except("TERM","HOME") # => {"LANG"=>"en_US.UTF-8"}
```

- **SEE** [Hash#except](../../../method/Hash/i/except.md), [ENV.slice](../../../method/ENV/s/slice.md)
