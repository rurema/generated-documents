# OpenURI::OpenRead#open

### def open(mode = 'r', perm = nil, options = {})                 -> StringIO
### def open(mode = 'r', perm = nil, options = {}){|sio| ... }     -> nil

自身が表すリソースを取得して [StringIO](../../../class/StringIO.md) オブジェクトとして返します。
[OpenURI.open_uri](../../../method/OpenURI/s/open_uri.md)(self, *rest, &block) と同じです。

ブロックを与えた場合は [StringIO](../../../class/StringIO.md) オブジェクトを引数としてブロックを評価します。ブロックの終了時に StringIO は close されます。nil を返します。

返り値である StringIO オブジェクトは [OpenURI::Meta](../../../class/OpenURI=3a=3aMeta.md) モジュールで extend されています。

- **param** `mode` -- モードを文字列で与えます。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです。

- **param** `perm` -- 無視されます。

- **param** `options` -- ハッシュを与えます。

- **raise** `OpenURI::HTTPError` -- 対象となる URI のスキームが http であり、かつリソースの取得に
                          失敗した時に発生します。

- **raise** `Net::FTPError` -- 対象となる URI のスキームが ftp であり、かつリソースの取得に失敗した時に
                     [Net::FTPError](../../../class/Net=3a=3aFTPError.md) のサブクラスが発生します。詳しくは [net/ftp](../../../library/net=2fftp.md)
                     を参照して下さい。

- **SEE** [OpenURI.open_uri](../../../method/OpenURI/s/open_uri.md)
