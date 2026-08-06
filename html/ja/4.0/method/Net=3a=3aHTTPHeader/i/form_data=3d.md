# Net::HTTPHeader#form_data=

### def form_data=(params)
### def set_form_data(params, sep = '&') -> ()

HTMLのフォームのデータ params からヘッダフィールドとボディを設定します。

ヘッダフィールド Content-Type: には
'application/x-www-form-urlencoded' が設定されます。

- **param** `params` -- HTML のフォームデータの [Hash](../../../class/Hash.md) を与えます。
- **param** `sep` -- データのセパレータを文字列で与えます。

```ruby title="例 form_data"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
req.form_data = {"q" => ["ruby", "perl"], "lang" => "en"} # => {"q"=>["ruby", "perl"], "lang"=>"en"}
```

```ruby title="例 set_form_data"
require 'net/http'

uri = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(uri.request_uri)
p req.set_form_data({"q" => "ruby", "lang" => "en"}, ';') # => "application/x-www-form-urlencoded"
```
