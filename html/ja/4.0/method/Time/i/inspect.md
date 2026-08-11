# Time#inspect

### def inspect     -> String
{: since=""}

時刻を文字列に変換した結果を返します。

[Time#to_s](../../../method/Time/i/to_s.md) とは異なり、秒未満の端数が 0 でない場合はその値も含めて返します。
端数が 0 の場合は [Time#to_s](../../../method/Time/i/to_s.md) と同じ結果になります。

```ruby
t = Time.now
p t.inspect                           # => "2012-11-10 18:16:12.261257655 +0100"
p t.strftime "%Y-%m-%d %H:%M:%S.%N %z"  # => "2012-11-10 18:16:12.261257655 +0100"

p t.utc.inspect                        # => "2012-11-10 17:16:12.261257655 UTC"
p t.strftime "%Y-%m-%d %H:%M:%S.%N UTC"  # => "2012-11-10 17:16:12.261257655 UTC"

t2 = Time.at(0.1r)
p t2.inspect                              # => "1970-01-01 09:00:00.1 +0900"
p t2.strftime("%Y-%m-%d %H:%M:%S.%N %z")  # => "1970-01-01 09:00:00.100000000 +0900"
```

戻り値の文字エンコーディングは [Encoding::US_ASCII](../../../method/Encoding/c/US_ASCII.md) です。
