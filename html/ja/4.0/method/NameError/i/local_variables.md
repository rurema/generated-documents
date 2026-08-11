# NameError#local_variables

### def local_variables -> [Symbol]

self が発生した時に定義されていたローカル変数名の一覧を返します。

内部での使用に限ります。

```ruby title="例"
def foo
  begin
    b = "bar"
    c = 123
    d
  rescue NameError => err
    p err.local_variables # => [:b, :c, :err]
  end
end

a = "buz"
foo
```
