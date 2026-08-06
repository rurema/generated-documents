# OpenURI::OpenRead#read

### def read(options = {})     -> String

自身が表す内容を読み込んで文字列として返します。
self.open(options={}) {|io| io.read } と同じです。
このメソッドによって返される文字列は [OpenURI::Meta](../../../class/OpenURI=3a=3aMeta.md)
によって extend されています。

- **param** `options` -- ハッシュを与えます。

```ruby
require 'open-uri'
uri = URI.parse('http://www.example.com/')
str = uri.read
p str.is_a?(OpenURI::Meta) # => true
p str.content_type
```
