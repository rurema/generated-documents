# RbConfig.expand

### def RbConfig.expand(val, config = CONFIG) -> String

与えられたパスを展開します。

```ruby
p RbConfig.expand("$(bindir)") # => /home/foobar/all-ruby/ruby19x/bin
```

- **param** `val` -- 展開したい変数名を Makefile に書く形式で指定します。

- **param** `config` -- 変数展開に使用する設定を [Hash](../../../class/Hash.md) で指定します。
  
- **SEE** [RbConfig::MAKEFILE_CONFIG](../../../method/RbConfig/c/MAKEFILE_CONFIG.md)
