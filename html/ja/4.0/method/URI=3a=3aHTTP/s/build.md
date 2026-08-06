# URI::HTTP.build

### def URI::HTTP.build(ary)     -> URI::HTTP
### def URI::HTTP.build(hash)    -> URI::HTTP

引数で与えられた URI 構成要素から URI::HTTP オブジェクトを生成します。
引数の正当性を検査します。

- **param** `ary` -- 構成要素を表す配列を与えます。要素は次の順です。
  ```text
        [userinfo, host, port, path, query, fragment]
  ```
- **param** `hash` -- 構成要素を表すハッシュを与えます。ハッシュのキーは  :scheme, :userinfo, :host, :port, :path, :query, :fragment のいずれかです。

- **raise** `URI::InvalidComponentError` -- 各要素が適合しない場合に発生します。

```ruby title="例"
require 'uri'
newuri = URI::HTTP.build({:host => 'www.example.com', :path => '/foo/bar'})  
newuri = URI::HTTP.build([nil, "www.example.com", nil, "/path", "query", 'fragment'])
```
