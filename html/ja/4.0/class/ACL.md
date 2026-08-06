# class ACL < Object

drb で用いる ACL(Access Control List)クラス。

Access control list は "allow" と "deny" の2つからなります。
"all" や "*" という文字列は任意のアドレスにマッチします。
[IPAddr](../class/IPAddr.md) が取り扱える任意のアドレス/アドレスマスクを使うことができます。

ACLのエントリーは、以下の例に示すように、

```text
"allow_or_deny", "addr1",
"allow_or_deny", "addr2",
   :
```

という文字列配列で表現されます。

- **SEE** [DRb?.install_acl](../method/DRb/m/install_acl.md), [DRb?.start_service](../method/DRb/m/start_service.md), [DRb::DRbServer.default_acl](../method/DRb=3a=3aDRbServer/s/default_acl.md), [DRb::DRbServer.new](../method/DRb=3a=3aDRbServer/s/new.md)

### 例

ACL を単独で用いる例。

```ruby
require "drb/acl"

list = %w[
  deny all
  allow 192.168.1.1
  allow ::ffff:192.168.1.2
  allow 192.168.1.3
]
  
# From Socket#peeraddr, see also ACL#allow_socket?
addr = ["AF_INET", 10, "lc630", "192.168.1.3"]
  
acl = ACL.new
p acl.allow_addr?(addr) # => true
  
acl = ACL.new(list, ACL::DENY_ALLOW)
p acl.allow_addr?(addr) # => true
```

## Class Methods

- [new](../method/ACL/s/new.md)

## Instance Methods

- [allow_addr?](../method/ACL/i/allow_addr=3f.md)
- [allow_socket?](../method/ACL/i/allow_socket=3f.md)
- [install_list](../method/ACL/i/install_list.md)

## Constants

- [ALLOW_DENY](../method/ACL/c/ALLOW_DENY.md)
- [DENY_ALLOW](../method/ACL/c/DENY_ALLOW.md)
- [VERSION](../method/ACL/c/VERSION.md)
