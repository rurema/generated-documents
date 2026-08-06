# Gem::RemoteFetcher#fetch_path

### def fetch_path(uri, mtime = nil, head = false) -> String | object

与えられた URI からダウンロードしたデータを文字列として返します。

uri のスキームが http/https/s3 で head に真を指定した場合は、ボディを読まずにレスポンスオブジェクト([Gem::RemoteFetcher#request](../../../method/Gem=3a=3aRemoteFetcher/i/request.md) の戻り値)をそのまま返します。file:// の場合は head の指定によらず常に文字列を返します。

- **param** `uri` -- データ取得先の URI を指定します。

- **param** `mtime` -- 更新時刻を指定します。

- **param** `head` -- 真を指定するとヘッダ情報のみ取得します。
