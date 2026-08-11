# Socket::AncillaryData.unix_rights

### def Socket::AncillaryData.unix_rights(*ios) -> Socket::AncillaryData

ios で指定したファイルのファイルデスクリプタをデータとして持つ family=AF_UNIX, level=SOL_SOCKET, type=SCM_RIGHTS
という Socket::AncillaryData オブジェクトを生成して返します。

```ruby
require 'socket'

p Socket::AncillaryData.unix_rights(STDERR)
# => #<Socket::AncillaryData: UNIX SOCKET RIGHTS 2>
```

- **param** `ios` -- IO オブジェクトの配列
- **SEE** [Socket::AncillaryData#unix_rights](../../../method/Socket=3a=3aAncillaryData/i/unix_rights.md),
     [Socket::Constants::SCM_RIGHTS](../../../method/Socket=3a=3aConstants/c/SCM_RIGHTS.md)
