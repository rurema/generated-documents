# Resolv::DNS.open

### def Resolv::DNS.open(*args) -> Resolv::DNS
### def Resolv::DNS.open(*args){|dns| ...} -> object

新しい DNS リゾルバを生成します。
ブロックを与えた場合は生成したリゾルバでブロックを呼びだし、ブロック終了時にリゾルバを閉じます。

ブロックを与えなかった場合は [Resolv::DNS.new](../../../method/Resolv=3a=3aDNS/s/new.md) と同じです。

- **param** `args` -- DNSの設定を与えます。意味は [Resolv::DNS.new](../../../method/Resolv=3a=3aDNS/s/new.md) 
            の引数と同じです。
- **return** -- ブロックを与えた場合はブロックの返す値を返し、与えなかった場合は生成したリゾルバを返します。
