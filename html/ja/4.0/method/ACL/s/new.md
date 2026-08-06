# ACL.new

### def ACL.new(list=nil, order = DENY_ALLOW) -> ACL

新たな ACL オブジェクトを返します。

list で許可/拒否するアドレスのリストを指定し、
order でデフォルトの挙動を指定します。

order に [ACL::DENY_ALLOW](../../../method/ACL/c/DENY_ALLOW.md) を指定するとデフォルトですべてのアドレスを拒否します。[ACL::ALLOW_DENY](../../../method/ACL/c/ALLOW_DENY.md) を指定するとデフォルトですべてのアドレスを許可します。

```ruby
require "drb/acl"

list = %w[
  deny all
  allow 192.168.1.1
  allow ::ffff:192.168.1.2
  allow 192.168.1.3
]
  
acl = ACL.new(list, ACL::DENY_ALLOW)
```

- **param** `list` -- ACLに追加するエントリー
- **param** `order` -- デフォルトで全アドレスを許可/拒否するかを指定します
