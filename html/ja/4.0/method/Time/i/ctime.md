# Time#ctime

### def asctime    -> String
### def ctime      -> String

時刻を [man:asctime(3)] の形式の文字列に変換します。ただし、末尾の改行文字 "\n" は含まれません。

戻り値の文字エンコーディングは [Encoding::US_ASCII](../../../method/Encoding/c/US_ASCII.md) です。

```ruby
p Time.local(2000).asctime            # => "Sat Jan  1 00:00:00 2000"
p Time.local(2000).asctime.encoding   # => #<Encoding:US-ASCII>
p Time.local(2000).ctime              # => "Sat Jan  1 00:00:00 2000"
```
