# OpenURI::Meta#last_modified

### def last_modified    -> Time | nil

対象となる URI の最終更新時刻を [Time](../../../class/Time.md) オブジェクトで返します。
Last-Modified ヘッダがない場合は nil を返します。

例:

```ruby title="例"
require 'open-uri'
URI.open('http://www.rubyist.net/') {|f|
  p f.last_modified
  # => Thu Feb 26 16:54:58 +0900 2004
}
```
