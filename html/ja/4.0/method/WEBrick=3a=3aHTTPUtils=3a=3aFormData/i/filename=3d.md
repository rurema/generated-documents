# WEBrick::HTTPUtils::FormData#filename=

### def filename         -> String | nil
### def filename=(value)

フォームデータの filename 属性を文字列で表すアクセサです。

- **param** `value` -- フォームデータの filename 属性を文字列で指定します。

```ruby title="例"
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    p req.query['q'].filename   # => "my_file.txt"
  end
end
MyCGI.new.start()
```
