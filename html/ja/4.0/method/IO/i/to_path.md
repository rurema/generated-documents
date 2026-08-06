# IO#to_path

### def path -> String | nil
### def to_path -> String | nil

IO に関連付けられたパスを返します。IO がパスに関連付けられていない場合は nil を返します。

このメソッドが返すパスがファイルシステム上に存在することは保証されていません。

```ruby title="例"
p STDIN.path                                 # => "<STDIN>"
p IO.new(IO.sysopen("/")).path               # => "/"
p IO.new(IO.sysopen("/"), path: "foo").path  # => "foo"
```
