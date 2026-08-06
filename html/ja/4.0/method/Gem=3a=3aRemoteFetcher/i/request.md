# Gem::RemoteFetcher#request

### def request(uri, request_class, last_modified = nil) -> Gem::Net::HTTPResponse

与えられた URI に対してリクエストを実行し、レスポンスオブジェクトを返します。

Ruby 3.3 以降の RubyGems は net-http を `Gem::Net` 名前空間の下に取り込んでいるため、戻り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) ではなく、それと同じインターフェースを持つ別クラス `Gem::Net::HTTPResponse` です。

- **param** `uri` -- URI を指定します。

- **param** `request_class` -- `Gem::Net::HTTP::Head` か `Gem::Net::HTTP::Get` を指定します。

- **param** `last_modified` -- 最終更新時刻を指定します。
