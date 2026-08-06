# class Net::HTTPRequest < Net::HTTPGenericRequest

HTTP リクエストを抽象化するクラスです。

Net::HTTPRequest は抽象クラスなので実際にはサブクラスの

  - [Net::HTTP::Get](../class/Net=3a=3aHTTP=3a=3aGet.md)
  - [Net::HTTP::Head](../class/Net=3a=3aHTTP=3a=3aHead.md)
  - [Net::HTTP::Post](../class/Net=3a=3aHTTP=3a=3aPost.md)
  - [Net::HTTP::Put](../class/Net=3a=3aHTTP=3a=3aPut.md)
  - [Net::HTTP::Copy](../class/Net=3a=3aHTTP=3a=3aCopy.md)
  - [Net::HTTP::Delete](../class/Net=3a=3aHTTP=3a=3aDelete.md)
  - [Net::HTTP::Lock](../class/Net=3a=3aHTTP=3a=3aLock.md)
  - [Net::HTTP::Mkcol](../class/Net=3a=3aHTTP=3a=3aMkcol.md)
  - [Net::HTTP::Move](../class/Net=3a=3aHTTP=3a=3aMove.md)
  - [Net::HTTP::Options](../class/Net=3a=3aHTTP=3a=3aOptions.md)
  - [Net::HTTP::Propfind](../class/Net=3a=3aHTTP=3a=3aPropfind.md)
  - [Net::HTTP::Patch](../class/Net=3a=3aHTTP=3a=3aPatch.md)
  - [Net::HTTP::Proppatch](../class/Net=3a=3aHTTP=3a=3aProppatch.md)
  - [Net::HTTP::Trace](../class/Net=3a=3aHTTP=3a=3aTrace.md)
  - [Net::HTTP::Unlock](../class/Net=3a=3aHTTP=3a=3aUnlock.md)

を使用してください。

### 例

```ruby
require 'net/http'
http = Net::HTTP.new('www.example.com', 80)
req = Net::HTTP::Get.new('/somefile')
res = http.request(req)
print res.body
```

## Class Methods

- [new](../method/Net=3a=3aHTTPRequest/s/new.md)
