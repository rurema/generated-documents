# ACL#install_list

### def install_list(list) -> ()

ACL に list で指定したエントリーを追加します。

```ruby
require "drb/acl"
acl = ACL.new
acl.install_list(["deny", "192.168.1.45"])
```

- **param** `list` -- 追加するエントリー
