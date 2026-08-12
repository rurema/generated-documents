# library drb/unix

DRb のプロトコルとして UNIX ドメインソケット経由で通信する drbunix が使えるようになります。

```ruby
require 'drb/unix'
obj = ''
DRb::DRbServer.new('drbunix:/tmp/hoge', obj)
```

[DRb::DRbServer.new](../method/DRb=3a=3aDRbServer/s/new.md) や [DRb?.start_service](../method/DRb/m/start_service.md) が
"drbunix" スキームを受け入れるようになります。
また、[DRb::DRbObject.new_with_uri](../method/DRb=3a=3aDRbObject/s/new_with_uri.md) でも drbunix スキームが使えるようになります。

サーバを起動するときは以下のオプションが追加で利用できます。

- **`:UNIXFileMode`**:
  UNIX ドメインソケットと結び付けられたファイルのモードを指定します。
  指定しない場合は [UNIXServer.new](../method/UNIXServer/s/new.md) がデフォルトで設定する値を利用します。
- **`:UNIXFileOwner`**:
  UNIX ドメインソケットと結び付けられたファイルの所有者を指定します。
  指定しない場合は [UNIXServer.new](../method/UNIXServer/s/new.md) がデフォルトで設定する値を利用します。
- **`:UNIXFileGroup`**:
  UNIX ドメインソケットと結び付けられたファイルのグループを指定します。
  指定しない場合は [UNIXServer.new](../method/UNIXServer/s/new.md) がデフォルトで設定する値を利用します。
