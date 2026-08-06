# Dir.home

### def Dir.home          -> String | nil
### def Dir.home(user)    -> String | nil

現在のユーザまたは指定されたユーザのホームディレクトリを返します。

Dir.home や Dir.home("root") は
File.expand_path("~") や File.expand_path("~root") とほぼ同じです。

```ruby title="例"
p Dir.home        # => "/home/vagrant"
p Dir.home("root")  # => "/root"
```

- **SEE** [File.expand_path](../../../method/File/s/expand_path.md)
