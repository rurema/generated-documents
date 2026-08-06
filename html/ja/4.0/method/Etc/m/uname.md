# Etc?.uname

### module_function def uname -> {Symbol => String}

[man:uname(2)] で取得したシステム情報を [Hash](../../../class/Hash.md) で返します。

- **return** -- 少なくとも :sysname, :nodename, :release, :version, :machine の
        5 つのキーを持つ [Hash](../../../class/Hash.md) を返します。

```ruby title="例"
require 'etc'
require 'pp'

pp Etc.uname
# => {:sysname=>"Linux",
#     :nodename=>"boron",
#     :release=>"2.6.18-6-xen-686",
#     :version=>"#1 SMP Thu Nov 5 19:54:42 UTC 2009",
#     :machine=>"i686"}
```
