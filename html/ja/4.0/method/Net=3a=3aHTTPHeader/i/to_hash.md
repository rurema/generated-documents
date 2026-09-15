# Net::HTTPHeader#to_hash

### def to_hash -> {String => [String]}
{: since=""}

保持しているヘッダフィールドの名前と値の組をハッシュで返します。

キーはヘッダフィールド名 (小文字)、値はそのフィールドの値からなる配列です。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri)
p req.to_hash
# => {"accept-encoding"=>["gzip;q=1.0,deflate;q=0.6,identity;q=0.3"], "accept"=>["*/*"], "user-agent"=>["Ruby"], "host"=>["www.example.com"]}
```

- **SEE** [Net::HTTPHeader#each_header](../../../method/Net=3a=3aHTTPHeader/i/each_header.md)
